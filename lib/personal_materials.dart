import 'package:flutter/material.dart';

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

class PersonalMaterials extends StatelessWidget {
  const PersonalMaterials({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lab App'),
        backgroundColor: Color.fromARGB(255, 39, 38, 38),
      ),
      body: Column(
        children: [
          SizedBox(height: 15,),
          Text("Tus materiales", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
          SizedBox(height: 15,),
          Divider(),
          SizedBox(height: 15,),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: _personalMaterials.length,
              itemBuilder: (context, index){
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image(image: NetworkImage("${_personalMaterials[index]["image"]}"), height: 100, width: 100,),
                    Column(
                      children: [
                        Text("${_personalMaterials[index]["name"]}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        Text("Devolver el ${_personalMaterials[index]["fecha"]}", style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    Column(
                      children: [
                        Text("${_personalMaterials[index]["status"]}", style: TextStyle(fontWeight: FontWeight.w700,color: Colors.red,),),
                        Text("${_personalMaterials[index]["unidades"]}", style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    )
                  ],
                );
              }
            ),
          ),
        ],
      )
    );
  }
}