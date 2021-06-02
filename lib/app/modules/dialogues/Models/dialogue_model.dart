import 'package:get/get.dart';

class DialogueModel{
  String name;
  String icon;
  bool isGroup;
  String time;
  String currentMessage;
  DialogueModel(
    // {required this.name, required this.icon, required this.isGroup, required this.time, required this.currentMessage,}
     this.name, this.icon, this.isGroup,  this.time,  this.currentMessage,
  );

  factory DialogueModel.fromJson(Map<String, dynamic> json) =>
    DialogueModel(
      json['name'], 
      json['icon'], 
      json['isGroup'], 
      json['time'], 
      json['currentMessage'],
    );

  Map<String, dynamic> toJson() =>  {
    'name': name,
    'icon': icon,
    'isGoup': isGroup,
    'time': time,
    'currentMessage': currentMessage,
  }; 
}