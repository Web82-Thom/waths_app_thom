class GroupModel{
  int id;
  String name;
  String icon;
  bool isGroup;
  String time;
  String currentMessage;
  String status;
  bool select = false;
  GroupModel(
    // {required this.name, required this.icon, required this.isGroup, required this.time, required this.currentMessage,}
     this.id,this.name, this.icon, this.isGroup,  this.time,  this.currentMessage, this.status, this.select,
  );

  factory GroupModel.fromJson(Map<String, dynamic> json) =>
    GroupModel(
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