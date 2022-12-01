import 'package:flutter/material.dart';
import 'home_page.dart';

class MatchMaterials extends StatelessWidget {
  const MatchMaterials({super.key, required this.itemsMatch, required this.userId});

  final List itemsMatch;
  final String userId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lab App'),
        backgroundColor: Color.fromARGB(255, 39, 38, 38),
      ),
      body: Column(
        children: [
          SizedBox(height: 30,),
          Text("Materiales encontrados ✓", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
          // Icon((Icons.check)),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(25),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              shrinkWrap: true,
              children: List<Widget>.generate(
                (itemsMatch.length),
                (index) =>
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(
                          image: NetworkImage(itemsMatch[index]['imageUrl']),
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
                                Text(itemsMatch[index]['name'],style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                                IconButton(icon: Icon(Icons.add), onPressed: () async{ 
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(item : itemsMatch.elementAt(index), userId: userId)));
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
}