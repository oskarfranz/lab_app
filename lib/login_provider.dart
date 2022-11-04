import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class LoginProvider with ChangeNotifier {

  bool _isLogged = false;

  bool get isLogged => _isLogged;

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

    

    var response = await http.post(url, body: 'data');
    // print(parsed);
    // var parsed = json.decode(response.body);
    if(response.body.toString()=='s')
      setIsLogged(true);
    // print(_isLogged.toString());
    // setResult(parsed);
  }

}