import 'package:flutter/material.dart';
import 'package:whatsapp/model/chat_model.dart';

class ChatsList  extends StatefulWidget {
  @override
  _ChatsListState createState() => new _ChatsListState();
}
class _ChatsListState extends State<ChatsList> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView.builder(
      itemCount: messageData.length,
      itemBuilder: (context, i) => new Column(
        children: <Widget>[
          new Divider(
            height: 10.0,
          ),
          new ListTile(
            leading:  new CircleAvatar(
              backgroundImage: NetworkImage(messageData[i].imageUrl),
            ),
          )
        ],
      ),
    );
  }
}