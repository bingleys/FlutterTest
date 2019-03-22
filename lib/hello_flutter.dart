import 'package:flutter/material.dart';


class HelloFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(

          child: new FlatButton(
            onPressed: () => Navigator.of(context).pop(),
            color: Colors.blueGrey,
            textColor: Colors.red,
            child: new Text('Back'),

          ),
        ),
      ),
    );

  }
}