import 'package:flutter/material.dart';

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image(image: NetworkImage("https://uelectronics.com/wp-content/uploads/2017/08/AR0140-74LS32-Compuerta-OR-SN74LS32N-V1.jpg"), height: 100, width: 100,),
              Column(
                children: [
                  Text("Compuerta OR", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Text("Devolver el 27 de noviembre", style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
              Column(
                children: [
                  Text("No devuelto", style: TextStyle(fontWeight: FontWeight.w700,color: Colors.red,),),
                  Text("3 unidades", style: TextStyle(fontWeight: FontWeight.bold))
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image(image: NetworkImage("https://www.cableredes.net/cups/Tipos-de-cable-de-red-880x608.jpg"), height: 100, width: 100,),
              Column(
                children: [
                  Text("Cables", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Text("Devolver el 1 de diciembre", style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
              Column(
                children: [
                  Text("No devuelto", style: TextStyle(fontWeight: FontWeight.w700,color: Colors.red,),),
                  Text("5 unidades", style: TextStyle(fontWeight: FontWeight.bold))
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image(image: NetworkImage("https://uelectronics.com/wp-content/uploads/2017/08/AR0140-74LS32-Compuerta-OR-SN74LS32N-V1.jpg"), height: 100, width: 100,),
              Column(
                children: [
                  Text("Compuerta AND", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Text("Devolver el 25 de noviembre", style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
              Column(
                children: [
                  Text("Devuelto", style: TextStyle(fontWeight: FontWeight.w700,color: Colors.green,),),
                  Text("2 unidades", style: TextStyle(fontWeight: FontWeight.bold))
                ],
              )
            ],
          ),
        ],
      )
    );
  }
}