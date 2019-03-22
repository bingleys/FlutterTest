import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_apptest/hello_flutter.dart';
import 'package:flutter_apptest/state_test.dart';




void main() => runApp(MyApp());

Map<String, WidgetBuilder> _routes = <String, WidgetBuilder>{
  'HelloFlutter' :(_)=>HelloFlutter(),
  'StateWidget'  :(_)=>StateTestPage(),
};

/*
 *  MaterialApp: Material组件，建议全应用只有一个，设置全应用主题样式等
 *  Scaffold:  Material Design布局结构的 页面层级，实现组件
 */
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext  context){

    return new MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Flutter"),
        ),
        body: new HomePage(),
      ),
      routes: _routes,
    );
  }
}


class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    var _items = _routes.keys.toList();
    return new ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context,index){
           return new Container(
             child: new ListTile(
               title: new Text('${_items[index]}'),

               onTap: (){
//                 Navigator.push(
//                     context, new MaterialPageRoute(
//                     builder: (context) => new HelloFlutter()));

                 Navigator.pushNamed(context, _items[index]);
               },
             ),
             decoration: BoxDecoration(
                 border: Border(
                     bottom: BorderSide(
                         color: Colors.grey)
                 )
             ),
           );
        },
    );
  }
}