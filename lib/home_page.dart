// import 'dart:convert';
// import 'dart:io';
// import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:lab_app/personal_materials.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
// import 'package:provider/provider.dart';
// import 'package:http/http.dart' as http;
// import './myprovider.dart'; 

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.item, required this.userId});
  final Map item;
  final String userId;

  @override
  _HomePageState createState() => _HomePageState();
}

enum SingingCharacter { amazing, good, okay }
class _HomePageState extends State<HomePage> {
  
  @override 
  void initState() {
    super.initState();
  
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        // title: Text('Lab App'),
        backgroundColor: Color.fromARGB(255, 39, 38, 38),
      ),
      body: Column(
        children: [
          SizedBox(height: 60,),
           Expanded(
             child: ListView(
               children: [
                 
                  Column(
                    children: [
                      Image.network(
                        widget.item['imageUrl'],
                        // "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png",
                        height: 220,
                      ),
                    ],
                  ),
                Padding(
                  padding: const EdgeInsets.only(left:70.0, right: 53, top:50),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // SizedBox(width: 55,),
                          Container(
                            width: 160,
                            child: Text(
                              widget.item['name'],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                          SizedBox(width: 37,),
                          Text(
                            (widget.item['aviableUnits']>0)? 'Disponible': 'No disponible',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 0,),
                          Container(
                            width: 160,
                            child: Text(
                              widget.item['partNumber'],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                          SizedBox(width: 37,),
                          Text(
                            widget.item['aviableUnits'].toString() + ' Unidades',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 180,
                          height: 40,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.black,
                              // foregroundColor: Colors.white,
                            ),
                            onPressed: (){ 
                              showAlertDialog(context, widget.userId, widget.item); 
                              print(widget.item);
                            }, 
                            child: Text(
                              'Solicitar material',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300
                              )
                            )
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        Text(
                          'Descripción',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700
                          )
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Container(
                          width:287,
                          child: Text(
                            widget.item['description'],
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400
                            )
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        Text(
                          'Características',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700
                          )
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Container(
                          width:287,
                          child: Text(
                            widget.item['features'].toString().replaceFirst('[','- ').replaceFirst(']','').replaceAll(',','\n-'),
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400
                            )
                          ),
                        ),
                      ],
                    ),
                    ],
                  ),          
                ),
                SizedBox(height: 25),
                Column(
                    children: [
                      Image.network(
                        widget.item['datasheetImg'],
                        // "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png",
                        width: 270,
                      ),
                      InkWell(
                        onTap: () => {launchUrl(Uri.parse(widget.item['pdfLink'],))},
                        child: Padding(
                          padding: const EdgeInsets.only(top:12.0),
                          child: Text(
                            'Full datasheet',
                            style: TextStyle(decoration: TextDecoration.underline, color: Colors.blue),
                          ),
                        ),
                      )
                    ],
                  ),
               ],
             ),
           ),
        ],
      )
    );
  }
}

showAlertDialog(BuildContext context, userId, item) {
  Widget cancelButton = TextButton(
    child: Text("Cancelar", style: TextStyle(color: Colors.white)),
    onPressed:  () {
      Navigator.pop(context);
    },
  );
  Widget continueButton = TextButton(
    child: Text("Confirmar", style: TextStyle(color: Colors.green)),
    onPressed:  () {
      solicitar(userId, item, context);
      Navigator.pop(context);
    },
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    backgroundColor: Color.fromARGB(255, 52, 52, 52),
    title: Text("Solicitud", style: TextStyle(color: Colors.white)),
    content: Text("Recuerda que debes reocoger el material en un plazo de 48hrs máximo", style: TextStyle(color: Colors.white)),
    actions: [
      cancelButton,
      continueButton,
    ],
  );
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

  void getPersonalMaterials(String userId, context) async{
      Uri url = Uri.parse('http://localhost:3000/users/'+userId);
      var response = await http.get(url);
      var parsed = json.decode(response.body);
      List personalItems = [];
      personalItems = parsed['items'];
      Navigator.push(context, MaterialPageRoute(builder: (context) => PersonalMaterials(personalItems: personalItems)));
  }

  void solicitar(String userId, item, context) async{
    Uri url = Uri.parse('http://localhost:3000/users/'+userId);
    var data = {
      "name": item['name'],
      "status": "No devuelto",
      "image": item['imageUrl'],
      "unidades": "1",
      "fecha": "30/11/2022"
    };

    var response = await http.get(url);
    var parsed = json.decode(response.body);
    List personalItems = [];
    personalItems = parsed['items'];
    personalItems.add(data);
    print(personalItems);

    updateItems(userId, personalItems);

    getPersonalMaterials(userId, context);

  }

  void updateItems(userId, personalItems)async{
    Uri urlPost = Uri.parse('http://localhost:3000/users/update/'+userId);
    var postResponse = await http.post(urlPost,headers: {'Content-type' : 'application/json'}, body: jsonEncode(personalItems));
    print(postResponse);
    
  }