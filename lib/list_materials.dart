import 'dart:io';

import 'package:flutter/material.dart';
import 'package:lab_app/home_page.dart';
import 'package:lab_app/match_materials.dart';
import 'package:lab_app/personal_materials.dart';

class ListMaterials extends StatefulWidget {
  const ListMaterials({super.key, required this.items});

  final List items;

  @override
  State<ListMaterials> createState() => _ListMaterialsState();
}

class _ListMaterialsState extends State<ListMaterials> {
  List itemsMatch = [];
  bool loading = false;
  @override 
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var filterController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Lab App'),
        backgroundColor: Color.fromARGB(255, 39, 38, 38),
        actions: [
          IconButton(icon: Icon(Icons.person),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => PersonalMaterials()));
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 10.0, left: 20.0, right: 20.0),
            child: TextField(
              controller: filterController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  borderSide: BorderSide(width: 10, color: Colors.black)
                ),
                labelText: 'Search for material',
                suffixIcon: Align(
                  widthFactor: 1.0,
                  heightFactor: 1.0,
                  child: IconButton(onPressed: () { 
                    loading = true;
                    setState(() {});
                    filterList(filterController.value.text, this.context);
                    loading = false;
                  },icon: Icon(Icons.search),),
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Text("Materiales", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
          widget.items.length == 0 ? CircularProgressIndicator(value: 0.8,) : SizedBox(),
          this.loading? CircularProgressIndicator(value: 0.8,) : SizedBox(),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(25),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              shrinkWrap: true,
              children: List<Widget>.generate(
                (widget.items.length),
                (index) =>
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(
                          image: NetworkImage(widget.items[index]['imageUrl']),
                          fit: BoxFit.cover,
                          ),
                        ),
                    ),
                    Positioned(
                      bottom: 0,right: 0,left: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(widget.items[index]['name'],style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                                IconButton(icon: Icon(Icons.add), onPressed: () async{ 
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(item : widget.items.elementAt(index))));
                                },)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      )
    );
  }
  void filterList(value, context){
    itemsMatch = [];
    // print("Valora a buscar: "+value);
    for(int i= 0; i<widget.items.length; i++){
      if(widget.items[i]['name'].toLowerCase().contains(value.toLowerCase())){
        itemsMatch.add(widget.items[i]);
        Navigator.push(context, MaterialPageRoute(builder: (context) => MatchMaterials(itemsMatch: itemsMatch)));
      }
      print(itemsMatch);
      print(itemsMatch.length);
      setState(() {});
    }
  }
}