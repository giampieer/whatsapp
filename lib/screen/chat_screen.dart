import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final String name;
  //se recibe el parametro en el CONSTRUCTOR
  ChatScreen({this.name});
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //se recibe el contructor
      child: new Text(widget.name),
    );
  }
}
