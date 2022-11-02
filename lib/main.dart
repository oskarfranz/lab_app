// import 'package:p11/match_song.dart';
import 'package:lab_app/list_materials.dart';
import './home_page.dart';
import 'package:flutter/material.dart';
import './myprovider.dart';
import 'package:provider/provider.dart';
import 'login.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MusicMatch',
      theme: ThemeData.light(),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<MyProvider>(create: (_) => MyProvider()),
        ],
        child: Login(),
)
      
    );
  }
}