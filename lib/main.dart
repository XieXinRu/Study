import 'package:flutter/material.dart';
import 'list.dart';
import 'page2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      //路由表定义
      routes:{
        "ListPage":(context)=> ListPage(),
        "Page2":(context)=> Page2(),
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
                                  RaisedButton(
                                      child: Text("Clikc to ListPage" ),
                                      onPressed: () {
                                        //根据命名路由做跳转
                                         Navigator.pushNamed(context, "ListPage");
                                      },
                                  ),
                                   RaisedButton(
                                      child: Text("Click to Page2" ),
                                      onPressed: () {
                                          //根据命名路由做跳转
                                         Navigator.pushNamed(context, "Page2");
                                      },
                                  )

                              ]
                      )
                  )
      );
  }  

}