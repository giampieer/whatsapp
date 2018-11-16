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
            //Row permite ingresar dos filas
            title: new Row(
              //dar espcion entre los 2 elemetos del Row
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  messageData[i].name,
                  //creamos un nuevo estilo para el texto
                  style: new TextStyle( fontWeight: FontWeight.bold),
                ),
                new Text(
                  messageData[i].time,
                  //creamos un nuevo estilo para el texto
                  style: new TextStyle( color: Colors.grey,fontSize: 14.0),
                )
              ],
            ),
            //AÑADIR UN CONTENIDO EN LA FILA
            subtitle: new Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: new Text(
                messageData[i].message,
                style: new TextStyle(color: Colors.grey, fontSize: 15.0),
              ),
            )
          )
        ],
      ),
    );
  }
}