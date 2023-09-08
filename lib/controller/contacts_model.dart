class ContactModel {
  String? name;
  String? number;

  ContactModel({
    this.name,
    this.number,
  });

  ContactModel.fromJson(Map<String, dynamic> json) {
    name = json["title"];
    number = json["number"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["title"] = name;
    _data["number"] = number;
    return _data;
  }
}
