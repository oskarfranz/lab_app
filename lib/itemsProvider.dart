import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class ItemsProvider with ChangeNotifier {

  List _userItems = [];

  List get items => _userItems;

  void setItems(List queryResult) {
    _userItems = queryResult;
    notifyListeners();
  }

  Future<void> getItems(String userId) async {
    Uri url = Uri.parse('http://localhost:3000/users/'+userId);

    var response = await http.get(url);
    var parsed = json.decode(response.body);
    // print(parsed);
    setItems(parsed);
    print(_userItems);
    // setResult(parsed);
  }

}