class DialogueModel{
  String name;
  String icon;
  bool isGroup;
  String time;
  String currentMessage;
  String status;
  bool select = false;
  DialogueModel(
    // {required this.name, required this.icon, required this.isGroup, required this.time, required this.currentMessage,}
     this.name, this.icon, this.isGroup,  this.time,  this.currentMessage, this.status, this.select,
  );

  factory DialogueModel.fromJson(Map<String, dynamic> json) =>
    DialogueModel(
      json['name'], 
      json['icon'], 
      json['isGroup'], 
      json['time'], 
      json['currentMessage'],
      json['status'],
      json['select'],
    );

  Map<String, dynamic> toJson() =>  {
    'name': name,
    'icon': icon,
    'isGoup': isGroup,
    'time': time,
    'currentMessage': currentMessage,
    'status': status,
    'select': select,
  }; 
}