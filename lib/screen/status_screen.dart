import 'package:flutter/material.dart';
import 'package:whatsapp/model/status_model.dart';

class StatusScreen extends StatefulWidget {
  @override
  _StatusScreenState createState() => new _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          new ListTile(
            leading: new CircleAvatar(
              foregroundColor: Theme.of(context).accentColor,
              backgroundColor: Colors.grey,
              backgroundImage: new NetworkImage(status[0].imgUrl),
            ),
            title: new Text(
              status[0].name,
              style: new TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: new Text("Añadir a mi estado"),
          ),
          new Text(
            "Recientes",
            style: new TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor),
          )
        ],
      ),
    );
  }
}
