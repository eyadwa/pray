
class AdvElement {
  AdvElement({
    this.id,
    this.title,
    this.text,
    this.image,
    this.created_at,
    this.updated_at,
  });

   int id;
   String title;
   String text;
   String image;
   String created_at;
   String updated_at;

   AdvElement.fromJson(Map<String, dynamic> json) {
    id =json["id"];
    title = json["title"];
    text = json["text"];
    image= json["image"];
    created_at = json["created_at"];
    updated_at= json["updated_at"];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id']=id;
    _data['title']=title;
    _data['text']=text;
    _data['image']=image;
    _data['created_at']=created_at;
    _data['updated_at']=updated_at;
    return _data;
  }
}
