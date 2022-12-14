// import 'package:p11/match_song.dart';

// import './home_page.dart';
import 'package:flutter/material.dart';
import 'package:lab_app/login.dart';
import 'package:lab_app/login_provider.dart';
import './myprovider.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LabApp',
      theme: ThemeData.light(),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<MyProvider>(create: (_) => MyProvider()),
          ChangeNotifierProvider<LoginProvider>(create: (_) => LoginProvider()),
        ],
        child: Login(),
)
      
    );
  }
}