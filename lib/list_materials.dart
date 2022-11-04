import 'package:flutter/material.dart';
import 'package:lab_app/home_page.dart';
import 'package:lab_app/personal_materials.dart';
import './myprovider.dart'; 
import 'package:provider/provider.dart';

class ListMaterials extends StatefulWidget {
  const ListMaterials({super.key});

  @override
  State<ListMaterials> createState() => _ListMaterialsState();
}

class _ListMaterialsState extends State<ListMaterials> {
  List items = [];
  @override 
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  borderSide: BorderSide(width: 10, color: Colors.black)
                ),
                labelText: 'Search for material',
                suffixIcon: Align(
                  widthFactor: 1.0,
                  heightFactor: 1.0,
                  child: IconButton(onPressed: searchBook,icon: Icon(Icons.search),),
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Text("Materiales", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(25),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(
                          image: NetworkImage("https://www.electropolis.es/media/magefan_blog/2019/11/Dise%C3%B1o-sin-t%C3%ADtulo-1.jpeg"),
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
                                Text("Cables",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                                IconButton(icon: Icon(Icons.add), onPressed: () async{ 
                                  await context.read<MyProvider>().getItems();
                                  this.items = context.read<MyProvider>().items;
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(item : this.items.elementAt(0))));
                                },)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}

void searchBook(){
  print("comming through");
}
void specificMaterial(){
  print("comming through");
}