
class Photos {
  int id;
  String name;
  String picture;
  String description;

  Photos({this.id, this.name, this.picture, this.description});

  Photos.fromJson(Map<String, dynamic> json){
    id = json["id"];
    name = json["name"];
    picture = json["picture"];
    description = json["description"];
  }
}

