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
           color: Colors.blue,
           width: 200,
           height: 200,
           child: Text("Hello Container ",style:TextStyle(fontSize: 20,color: Colors.white)),
        )
      )
    );
  }
}