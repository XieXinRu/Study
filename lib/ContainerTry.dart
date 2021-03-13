import 'package:flutter/material.dart';

class  ContainerTry extends StatelessWidget{
 @override
  Widget build(BuildContext context) {
     
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Page"),
      ),
      body:
      //容器Container-基础属性：width，height，color，child
      Center(
          child: Container(
              padding: EdgeInsets.all(30), //留白
              margin: EdgeInsets.only(left: 150,top: 0,right: 0,bottom: 0), //邊界
              transform: Matrix4.rotationZ(0.5), //旋轉
              color: Colors.blue,
              width: 200,
              height: 200,
              //角定位----------------显示的内容在左上角，左下角，右上角，右下角
              // child: Align(
              //         alignment: Alignment.bottomRight,
              //         child:Text("Hello Align ",style:TextStyle(fontSize: 20,color: Colors.white)),
              // )
              //  child: Text("Hello Container ",style:TextStyle(fontSize: 20,color: Colors.white)),
              
              //匯入圖片----------------------------------- yaml加入assets/images/main.png
              // child:Image( 
              //     image: AssetImage("assets/images/main.png"),
              //       width: 200.0,
              // )
              //絕對定位(位置)------------------------------
              child:Stack(
              children: <Widget>[
                  Image.network("https://ossweb-img.qq.com/upload/adw/image/20191022/627bdf586e0de8a29d5a48b86700a790.jpeg"),
                  Positioned(
                    top: 20,
                    right: 20,
                    child:Image.asset("assets/images/main.png",width:100.0)
                  )
              ],
            )
          )
      )
    );
  }
}