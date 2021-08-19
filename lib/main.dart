import 'package:flutter/material.dart';
import '../screens/home.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp>{
  @override 
  Widget build(BuildContext context){
    return Home();
  }
}