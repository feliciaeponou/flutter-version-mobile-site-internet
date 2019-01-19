import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  // This is a root widget
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.grey
      ),
      home : MyHomePage(),
    );
  }
}


// class MyHomePage

class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// MyHomePageState
class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context){
    return WebviewScaffold(
        appBar: new AppBar(
            title: new Center(
              child: new Text(''),
            )
        ),
 //       url: 'http://192.168.8.111:8000/index.php',

      url: 'http://172.19.1.109:8000',
      withJavascript: true,
    );
  }
}