import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final String name;
  //se recibe el parametro en el CONSTRUCTOR
  ChatScreen({this.name});
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  //sirve como certificador de como cambia de estado
  final TextEditingController _textController = new TextEditingController();
  Widget __buildTextComposer() {
    return new Container(
      child: new Row(
        children: <Widget>[
          new Flexible (
            child:  new TextField(
              controller: _textController,
            ),

          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar:  new AppBar(
          //se recibe el contructor
          title: new Text(widget.name),
        ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Container(
              child: __buildTextComposer(),
            )
          ],
        ),
      )
    );
  }
}
