import 'package:flutter/material.dart';

import 'LoginPage.dart';

void main(){
  runApp(MYApp());
}
class MYApp extends StatelessWidget{
  const MYApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );

  }

}
