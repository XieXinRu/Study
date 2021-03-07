import 'package:flutter/material.dart';

class WidgetTry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    //返回整个页面
    return Scaffold( //一定要有return
      appBar: AppBar(
        title: Text("WidgetTry"),
      ),
      body: Center(
        child:Column(
          children:<Widget>[
              // RaisedButton: 凸起的按钮
              // FlatButton：扁平化按钮
              // OutlineButton：带边框按钮
              // IconButton：带图标按钮
              RaisedButton(
                  child: Text("我是 RaiseButton" ),
                  onPressed: () {},
              ),
              FlatButton(
                  child: Text("我是 FlatButton" ),
                  color: Colors.blue,
                  onPressed: () {},
              ),
              OutlineButton(
                  child: Text("我是 OutlineButton" ),
                  textColor: Colors.blue,
                  onPressed: () {},
              ),
              IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {},
              )
          ]
        )
      )
    );
  }
}