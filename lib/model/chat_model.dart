class ChatModel {
  final String name;
  String message;
  final String time;
  final String imageUrl;
  //se agrega llaves dentro de los parentesis para evitar errpres al rear la List<ChatModel> messageData
  ChatModel({this.name, this.message, this.time, this.imageUrl});
}
  //UTILIZACION DE VARIABLES LOCALES ufera de la class ChatModel
  List<ChatModel> messageData = [
  new ChatModel(
      name : "Giampieer",
      message : "Hello Word",
      time: "12:00",
      imageUrl: "https://cdn1.iconfinder.com/data/icons/flat-business-icons/128/user-512.png"
  ),
  ];
