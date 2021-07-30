import 'package:test/test.dart';
import 'package:http/http.dart' as http;

Future<void> main() async {
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/users');
    var response = await http.get(uri);

    test('Username test', () {
      expect(response.statusCode, 200);
    });
}