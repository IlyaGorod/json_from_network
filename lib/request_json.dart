import 'dart:convert';
import 'package:http/http.dart' as http;
import 'models_json.dart';

Future <List<Photos>> getData() async {
  var url = "https://raw.githubusercontent.com/ababicheva/FlutterInternshipTestTask/main/recipes.json";
  var response = await http.get(Uri.parse(url));

  // ignore: deprecated_member_use
  var _dataList = List<Photos>();

  if (response.statusCode == 200) {
    var data = json.decode(response.body);
    for (var data in data) {
      _dataList.add(Photos.fromJson(data));
    }
  }
  return _dataList;
}
