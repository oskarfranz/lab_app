import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class LoginProvider with ChangeNotifier {

  bool _isLogged = false;
  String _userId = '';

  bool get isLogged => _isLogged;
  String get userId => _userId;


  void setIsLogged(bool isLogged) {
    _isLogged = isLogged;
    notifyListeners();
  }

  Future<void> Login(String username, String password) async {
    Uri url = Uri.parse('http://localhost:3000/users/login');
    var data = {
      "password": password,
      "username": username
    };

    
    // print(data);

    var response = await http.post(url,headers: {'Content-type' : 'application/json'}, body: jsonEncode(data));
    // print(parsed);
    // print(response);
    var parsed = json.decode(response.body);
    print(parsed);
    if(parsed['logged']== true)
      setIsLogged(true);
    else{
      setIsLogged(false);
    }
    // print(_isLogged.toString());
    // setResult(parsed);
  }

  Future<void> getUser(String username) async {

    Uri url = Uri.parse('http://localhost:3000/users/find');
    var data = {
      "username": username
    };

    var response = await http.post(url,headers: {'Content-type' : 'application/json'}, body: jsonEncode(data));
    var parsed = json.decode(response.body);
    _userId = parsed['id'];
  }

}