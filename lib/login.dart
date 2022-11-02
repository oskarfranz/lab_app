// import 'dart:convert';
// import 'dart:io';
// import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:lab_app/list_materials.dart';
import 'package:provider/provider.dart';
// import 'package:http/http.dart' as http;
import './myprovider.dart'; 



class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

enum SingingCharacter { amazing, good, okay }
class _LoginState extends State<Login> {
  
  @override 
  void initState() {
    super.initState();
  
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:
      
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:110.0),
            child: Image.network('https://upload.wikimedia.org/wikipedia/commons/d/db/Logo_ITESO_normal.jpg', height: 300, width: 1000,),
          ),
          Padding(padding:EdgeInsets.only(top:50, right:20, left:20), child: 
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.adjust),
                label: Text("Nombre de usuario"),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top:25, right:20, left:20), child: 
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.donut_large),
                label: Text("Contraseña"),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top:35, right:20, left:20), child: 
            Container(
              width: 300,
              height: 40,
              child: TextButton(
                child: Text('Ingresar'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ListMaterials()));
                },
                style: TextButton.styleFrom(
                  // foregroundColor: Colors.white,
                  backgroundColor: Color.fromARGB(255, 7, 29, 75)),
                  
              ),
            ),
          ),
        ],
      ),
      
    );
  }
}
