import 'package:flutter/material.dart';
import 'package:lab_app/home_page.dart';
import 'package:lab_app/personal_materials.dart';

class ListMaterials extends StatelessWidget {
  const ListMaterials({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lab App'),
        backgroundColor: Color.fromARGB(255, 39, 38, 38),
        actions: [
          IconButton(icon: Icon(Icons.person),
            onPressed: () {
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
                                IconButton(icon: Icon(Icons.add), onPressed: (){ 
                                  specificMaterial(); 
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                                },)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                      image: DecorationImage(
                        image: NetworkImage("https://uelectronics.com/wp-content/uploads/2017/06/AR0005-Protoboard-830-Pts-MB-102-5.jpg"),
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
                                Text("Protoboard",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                                IconButton(icon: Icon(Icons.add), onPressed: (){
                                  specificMaterial();
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                                },)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                      image: DecorationImage(
                        image: NetworkImage("https://mexico.newark.com/productimages/standard/en_US/40AH1577-40.jpg"),
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
                                Text("Basys",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                                IconButton(icon: Icon(Icons.add), onPressed: (){
                                  specificMaterial(); 
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                                },)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                      image: DecorationImage(
                        image: NetworkImage("https://www.mouser.mx/images/marketingid/2020/img/108638983.png?v=031122.0117"),
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
                                Text("Basys III",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                                IconButton(icon: Icon(Icons.add), onPressed: (){
                                  specificMaterial(); 
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                                },)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                      image: DecorationImage(
                        image: NetworkImage("https://uelectronics.com/wp-content/uploads/2018/02/AR0292-74LS11-Compuerta-AND-3-Entradas-SN74LS11N-V1-1.jpg"),
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
                                Text("Compuerta AND",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                                IconButton(icon: Icon(Icons.add), onPressed: (){
                                  specificMaterial(); 
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                                },)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                      image: DecorationImage(
                        image: NetworkImage("https://s1.eestatic.com/2021/12/31/invertia/disruptores-innovadores/politica-digital/europa/638946123_220700024_1024x576.jpg"),
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
                                Text("Microprocesador",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                                IconButton(icon: Icon(Icons.add), onPressed: (){ 
                                  specificMaterial(); 
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                                },)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                      image: DecorationImage(
                        image: NetworkImage("https://uelectronics.com/wp-content/uploads/2017/08/AR0140-74LS32-Compuerta-OR-SN74LS32N-V1.jpg"),
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
                                Text("Compuerta OR",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                                IconButton(icon: Icon(Icons.add), onPressed: (){
                                  specificMaterial(); 
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
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