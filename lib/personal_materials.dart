import 'package:flutter/material.dart';

class PersonalMaterials extends StatelessWidget {
  const PersonalMaterials({super.key, required this.personalItems});

  final List personalItems;

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
              itemCount: personalItems.length,
              itemBuilder: (context, index){
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image(image: NetworkImage("${personalItems[index]["image"]}"), height: 100, width: 100,),
                    Column(
                      children: [
                        Text("${personalItems[index]["name"]}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        Text("Devolver el ${personalItems[index]["fecha"]}", style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    Column(
                      children: [
                        Text("${personalItems[index]["status"]}", style: TextStyle(fontWeight: FontWeight.w700,color: Colors.red,),),
                        Text("${personalItems[index]["unidades"]}", style: TextStyle(fontWeight: FontWeight.bold))
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