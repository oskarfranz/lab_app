// import 'dart:convert';
// import 'dart:io';
// import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:lab_app/list_materials.dart';
import 'package:provider/provider.dart';
import "./login_provider.dart";
import 'myprovider.dart';
// import 'package:http/http.dart' as http; 



class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

enum SingingCharacter { amazing, good, okay }
class _LoginState extends State<Login> {
  List items = [];
  var userController = TextEditingController();
  var passwordController = TextEditingController();
  @override 
  void initState() {
    super.initState();
  
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    userController.dispose();
    passwordController.dispose();
    super.dispose();
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
              controller: userController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.adjust),
                label: Text("Nombre de usuario"),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top:25, right:20, left:20), child: 
            TextField(
              controller: passwordController,
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
                onPressed: () async {
                  await context.read<LoginProvider>().Login(userController.text, passwordController.text);
                  bool isLogged = context.read<LoginProvider>().isLogged;
                  // bool isLogged = false;
                  print(isLogged);
                  if(isLogged){
                    print('Logged in successfully');
                    await context.read<MyProvider>().getItems();
                    this.items = await context.read<MyProvider>().items;
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ListMaterials(items : this.items)));
                  }
                  else
                    print("Usuario o contraseña incorrecta");
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
