import 'package:get/get.dart';

class ContactModel{
  int id;
  String name;
  String icon;
  bool isGroup;
  String time;
  String currentMessage;
  String status;
  bool select;
  ContactModel(
    // {required this.id, required this.name, required this.icon, required this.isGroup, required this.time, required this.currentMessage, required this.status, required this.select}
     this.id, this.name, this.icon, this.isGroup,  this.time,  this.currentMessage, this.status, this.select,
  );

  factory ContactModel.fromJson(Map<String, dynamic> json) =>
    ContactModel(
      json['id'],
      json['name'], 
      json['icon'], 
      json['isGroup'], 
      json['time'], 
      json['currentMessage'],
      json['status'],
      json['select'],
    );

  Map<String, dynamic> toJson() =>  {
    'id': id,
    'name': name,
    'icon': icon,
    'isGoup': isGroup,
    'time': time,
    'currentMessage': currentMessage,
    'status': status,
    'select': select,
  }; 
}