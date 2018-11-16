import 'package:flutter/material.dart';
import 'package:whatsapp/pages/camera_screen.dart';
class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsappHomeSate createState() => new _WhatsappHomeSate();
}
class _WhatsappHomeSate extends State<WhatsAppHome> with SingleTickerProviderStateMixin{
  TabController _tabController;
  @override
  void initState(){
    super.initState();
        _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Whatsapp"),
        bottom: new TabBar(
          //el controlador de las vistas
          controller: _tabController,
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.camera_alt)),
              new Tab(text: "CHATS"),
              new Tab(text: "ESTADOS"),
              new Tab(text: "LLAMADAS",)
            ],
        ),
      ),
      body: new TabBarView(
        //el controlador de las vistas
        controller: _tabController,
          children: <Widget>[
            new CameraScreen(),
            new CameraScreen(),
            new CameraScreen(),
            new CameraScreen()
          ],
      ),
    );
  }
}