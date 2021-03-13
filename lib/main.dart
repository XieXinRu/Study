import 'package:flutter/material.dart';
import 'list.dart';
import 'WidgetTry.dart';
import 'DetailPage.dart';
import 'ContainerTry.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //StatelessWidget：无状态变更，UI静态固化的Widget， 页面渲染性能更高。
  //StatefulWidget：因状态变更可以导致UI变更的的Widget，涉及到数据渲染场景，都使用StatefulWidget。
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      //路由表定义
      routes:{
        "ListPage":(context)=> ListPage(),
        "WidgetTry":(context)=> WidgetTry(),
        "DetailPage":(context)=> DetailPage(),
        "ContainerTry":(context)=> ContainerTry(),

      },
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage>{
  bool _visible=true;
   @override
   Widget build(BuildContext context) {
       return Scaffold(
            appBar: AppBar(
                title: Text("我是Title"),
              ),
              body: Center(
                child:Column(
                  children:<Widget>[
                    Text(
                        "練習",
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color:Color(0xFF0000ff)
                        )
                    ),
                    RaisedButton(
                      child: Text("Clikc to ListPage" ),
                      onPressed: () {
                      //根据命名路由做跳转
                        Navigator.pushNamed(context, "ListPage");
                      },
                    ),
                    RaisedButton(
                      child: Text("Click to WidgetTry" ),
                      onPressed: () {
                      //根据命名路由做跳转
                        Navigator.pushNamed(context, "WidgetTry");
                      },
                    ),
                    RaisedButton(
                      child: Text("Click to ContainerTry" ),
                      onPressed: () {
                      //根据命名路由做跳转
                        Navigator.pushNamed(context, "ContainerTry");
                      },
                    ),
                    AnimatedOpacity(
                        opacity: _visible ? 1.0:0.0,
                        duration: Duration(milliseconds: 1000),
                        child: Image.asset("assets/images/main.png"),
                      ),

                      RaisedButton(
                        child: Text("显示隐藏"),
                        onPressed: (){
                          setState(() {
                            _visible=!_visible;
                          });
                         },
                      ),
                  ]
                )
            )
      );
  }  

}