import 'package:flutter/material.dart';
import '../general/hex.dart';

class Brand extends StatelessWidget{
  
  final String brand_name;

  Brand({this.brand_name='I LOVE DHINCHAK PUJA'});

  @override 
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
          Text(brand_name, style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold,),),
          Spacer(),
          Container(
            height: 32,
            width: 32,
            child: FloatingActionButton(
            onPressed: null, 
            elevation: 10,
            backgroundColor:Colors.white,
            child: Icon(Icons.add, color: HexColor('212230'),),
          ),
       ),
      ],
   );
  }
}

