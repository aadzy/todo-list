import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import 'pages/home_page.dart';

void main() async{

  //init the hive
  await Hive.initFlutter();


  //open a box
  var box = await Hive.openBox('MyBox');





  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
