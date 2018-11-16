import 'package:whatsapp/model/chat_model.dart';

class StatusModel {
  final String imgUrl;
  final String name;
  final String time;

  StatusModel({this.name, this.time, this.imgUrl});
}
  List<StatusModel> status = [
    new StatusModel(
        name: messageData[0].name,
        time: "12:00",
        imgUrl: messageData[0].imageUrl
    ),
  ];