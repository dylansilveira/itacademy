import 'dart:convert';

class User {
  int? _id;
  String? _name, _username, _email, _phone, _website;
  Map<String, dynamic>? _address, _company;

  User(
      this._id,
      this._name,
      this._username,
      this._email,
      this._phone,
      this._website,
      this._address,
      this._company
  );

  Object? getValue(String? value){
    if (value == null) {
      return null;
    }
    switch(value){
      case 'id': return _id; break;
      case 'name': return _name; break;
      case 'username': return _username; break;
      case 'email': return _email; break;
      case 'phone': return _phone; break;
      case 'website': return _website; break;
      case 'address': return _address; break;
      case 'company': return _company; break;
      case 'street': return _address!['street']; break;
      case 'suite': return _address!['suite']; break;
      case 'city': return _address!['city']; break;
      case 'zipcode': return _address!['zipcode']; break;
      case 'geo': return _address!['geo']; break;
      case 'lat': return _address!['geo']['lat']; break;
      case 'lng': return _address!['geo']['lng']; break;
      case 'company:name': return _company!['name']; break;
      case 'bs': return _company!['bs']; break;
      case 'catchPhrase': return _company!['catchPhrase']; break;
      default: throw Exception('Campo inexistente.');
    }
  }

  User.fromJson(String source){
    var jsonAux=json.decode(source);
    _id=jsonAux['id'];
    _name=jsonAux['name'];
    _username=jsonAux['username'];
    _email=jsonAux['email'];
    _phone=jsonAux['phone'];
    _website=jsonAux['website'];
    _address=jsonAux['address'];
    _company=jsonAux['company'];
  }

  @override
  String toString(){
    return '$_username (ID: $_id)';
  }
}