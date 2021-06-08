class ContactModel{
  String name;
  String status;
  ContactModel(
    // {required this.name, required this.icon, required this.isGroup, required this.time, required this.currentMessage,}
     this.name, this.status,
  );

  factory ContactModel.fromJson(Map<String, dynamic> json) =>
    ContactModel(
      json['name'], 
      json['status']
    );

  Map<String, dynamic> toJson() =>  {
    'name': name,
    'status': status,
  }; 
}