import 'package:financy/general/hex.dart';
import 'package:flutter/material.dart';
import '../sections/brand.dart';
import '../general/expense.dart';
import '../sections/card.dart';
import '../sections/transactions.dart';
import '../sections/input.dart';

class Home extends StatefulWidget{


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void ok(){
    print('ok');
  }

  @override 
  Widget build(BuildContext context){
    return  MaterialApp(
      home: Scaffold(  
        backgroundColor: HexColor('151321'),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [

              Brand(brand_name: 'Financy',),

              SizedBox(height: 20,),

              AllTransactions(),

              SizedBox(height: 15,),

              AddTransaction(),

            ],
          ),
        ),
      ),
    );
  }
}