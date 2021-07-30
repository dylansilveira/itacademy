import 'package:http/http.dart' as http;
import 'dart:convert';
import 'User.dart';

Future<void> main() async {
  var uri = Uri.parse('https://jsonplaceholder.typicode.com/users');
  var response = await http.get(uri);

  print(response.statusCode);

  var myUsers = <User?>[];
  var userList = json.decode(response.body);

  for (Map<String, dynamic> item in userList) {
    myUsers.add(User.fromJson(json.encode(item)));
  }

  myUsers.forEach((element) => print(element));
}