import 'package:financy/general/hex.dart';
import 'package:flutter/material.dart';
import '../sections/brand.dart';
import '../general/expense.dart';

class Home extends StatefulWidget{
  HomeState createState()=> HomeState();
}

class HomeState extends State<Home>{

  void ok(){
    print('ok');
  }

  final List<Expense> expense = [
    Expense(id: 0, expense_title: 'Dominoz Pizza', type: 'spent', amount: 540, your_emotion: 'neutral', date: DateTime.now()),
    Expense(id: 1, expense_title: 'Apple Stock', type: 'added', amount: 73.2, your_emotion: 'happy', date: DateTime.now()),
    Expense(id: 2, expense_title: 'Doge', type: 'crypto--', amount: 3200, your_emotion: 'sad', date: DateTime.now()),
    Expense(id: 3, expense_title: 'Dominoz Pizza', type: 'spent', amount: 540, your_emotion: 'happy', date: DateTime.now()),
    Expense(id: 4, expense_title: 'Dominoz Pizza', type: 'spent', amount: 540, your_emotion: 'happy', date: DateTime.now()),
  ];

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

              Column(
                children: expense.map(
                  (ex) {
                    return Container(width: double.infinity, child: Card(child: Text(ex.expense_title+" - "+ex.amount.toString()),));
                  }
                  ).toList(),
              ),

            ],
          ),
        ),
      ),
    );
  }
}