import 'package:financy/router/route_generator.dart';
import 'package:financy/router/route_list.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp>{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Financy",
      initialRoute: routeHome,
      onGenerateRoute: RouteGenerator.generate,
    );
  }
}