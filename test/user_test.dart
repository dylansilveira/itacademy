import 'package:test/test.dart';
import '../bin/User.dart';

void main(){
  var string = '''{
    "id": 1,
    "name": "Leanne Graham",
    "username": "Bret",
    "email": "Sincere@april.biz",
    "address": {
      "street": "Kulas Light",
      "suite": "Apt. 556",
      "city": "Gwenborough",
      "zipcode": "92998-3874",
      "geo": {
        "lat": "-37.3159",
        "lng": "81.1496"
      }
    },
    "phone": "1-770-736-8031 x56442",
    "website": "hildegard.org",
    "company": {
      "name": "Romaguera-Crona",
      "catchPhrase": "Multi-layered client-server neural-net",
      "bs": "harness real-time e-markets"
    }
  }''';

  group('User', () {
    test('Username test', () {
      var user = User.fromJson(string);
      expect(user.getValue('username'), equals('Bret'));
    });

    test('Exception test', () {
      var user = User.fromJson(string);
      expect(() => user.getValue('Thiciane'), throwsException);
    });
  });
}