class SunehModel {
  SunehModel({
    this.id,
    this.text,
    this.type,
    this.createdAt,
    this.updatedAt,
  });
  int id;
  String text;
  String type;
  String createdAt;
  String updatedAt;

   SunehModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    text = json['text'];
    type = json['type'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['text'] = text;
    _data['type'] = type;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    return _data;
  }
}


