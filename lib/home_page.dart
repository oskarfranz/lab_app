// import 'dart:convert';
// import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:http/http.dart' as http;
// import './myprovider.dart'; 



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

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
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 75,
              ),
            ],
          ),
          Container(
            width: 290,
            height: 45,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(width: 3, color: Colors.grey),
              borderRadius: BorderRadius.circular(24),
            ),
            child: 
              Padding(
                padding: const EdgeInsets.only(right:18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.search, 
                      color: Colors.grey,
                    ),                 
                  ],
                ),
              ) 
          ),
           Expanded(
             child: Column(
               children: [
                 SizedBox(
                      height: 40,
                    ),
                  Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(width: 2, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Image.network(
                        'https://http2.mlstatic.com/D_NQ_NP_619799-MLM45257831533_032021-W.jpg',
                        height: 220,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:53.0, right: 53),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // SizedBox(width: 55,),
                          Text(
                            'Compuerta OR',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          SizedBox(width: 37,),
                          Text(
                            'Disponible',
                            style: TextStyle(
                              fontSize: 16,
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
                          Text(
                            '74LS32',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          SizedBox(width: 145,),
                          Text(
                            '24 Unidades',
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
                              foregroundColor: Colors.white,
                            ),
                            onPressed: ()=>{

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
                            'Este circuito TTl cuenta con 4 compuertas OR y es compatible con protoboards',
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
                            '- VCC 5V',
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
               ],
             ),
           ),
        ],
      )
    );
  }
}
