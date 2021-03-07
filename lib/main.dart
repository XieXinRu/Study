import 'package:flutter/material.dart';
import 'list.dart';
import 'WidgetTry.dart';
import 'DetailPage.dart';
import 'ContainerTry.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
                    )
                  ]
                )
            )
      );
  }  

}