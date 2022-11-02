import 'package:flutter/foundation.dart';

class MyProvider with ChangeNotifier {

  final List<Map<String, String>> _personalMaterials = [
    {
      "name": "Compuerta OR",
      "status": "No devuelto",
      "image": "https://uelectronics.com/wp-content/uploads/2017/08/AR0140-74LS32-Compuerta-OR-SN74LS32N-V1.jpg",
      "unidades": "3 unidades",
      "fecha": "27 de noviembre"
    },
    {
      "name": "Cables",
      "status": "No devuelto",
      "image": "https://www.cableredes.net/cups/Tipos-de-cable-de-red-880x608.jpg",
      "unidades": "5 unidades",
      "fecha": "1 de diciembre"
    },
    {
      "name": "Compuerta AND",
      "status": "Devuelto",
      "image": "https://uelectronics.com/wp-content/uploads/2017/08/AR0140-74LS32-Compuerta-OR-SN74LS32N-V1.jpg",
      "unidades": "2 unidades",
      "fecha": "25 de noviembre"
    },
];
  List<Map<String, String>> get personalMaterials => _personalMaterials;
  

  // void startStop() {
  //   _duration = (_duration==0)? 1800:0;
  //   notifyListeners();
  // }

  // void tfRecord() {
  //   _isRecording = !_isRecording;
  //   notifyListeners();
  // }

  // void setResult(Object queryResult) {
  //   _result = queryResult;
  //   notifyListeners();
  // }

}