import 'package:flutter/material.dart';
import 'list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage>{
   var msg="Hello World"; //msg默认文字
   @override
   Widget build(BuildContext context) {
       return Scaffold(
            appBar: AppBar(
              title: Text("我是Title"),
            ),
            body: Center(
                      child:Column(
                              children:<Widget>[
                                  Text(msg), //根据变量值，显示文字
                                  FlatButton(
                                    color: Colors.blue,textColor: Colors.white,
                                    onPressed: () {    
                                      Navigator.push(context, MaterialPageRoute(builder:(context) {
                                        return  ListPage();
                                      }));
                                    },
                                    child: Text("Click ME",style: TextStyle(fontSize: 20.0) ),
                                  )
                              ]
                      )
                  )
      );
  }  

}