import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class MyProvider with ChangeNotifier {

  Map _items = {};

  Map get items => _items;

  void setItems(Map queryResult) {
    _items = queryResult;
    notifyListeners();
  }

  Future<void> getItems() async {
    Uri url = Uri.parse('http://localhost:3000/items');

    var response = await http.get(url);
    var parsed = json.decode(response.body);
    // print(parsed);
    setItems(parsed);
    print(_items);
    // setResult(parsed);
  }

}