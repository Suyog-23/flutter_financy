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
    Expense(id: 3, expense_title: 'Lays', type: 'spent', amount: 20, your_emotion: 'sad', date: DateTime.now()),
    Expense(id: 4, expense_title: 'Ethereum', type: 'crypto++', amount: 4000, your_emotion: 'happy', date: DateTime.now()),
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
                    return Container(width: double.infinity, 
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 8),
                      child: Card(
                        color: HexColor('212230'),
                        elevation: 10,
                        
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: ex.type=='crypto--'?
                            Icon(Icons.trending_down, color: Colors.red,) : ex.type=='crypto++'? Icon(Icons.trending_up, color: Colors.green,) : Icon(Icons.money_rounded, color: Colors.lightBlue,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(ex.expense_title, style: TextStyle(color: Colors.white),),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Icon(Icons.attach_money_rounded, color: Colors.white,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: Text(ex.amount.toString(), style: TextStyle(color: Colors.white),),
                            ),
                          ],
                        ),
                      ),
                    ),
                    );
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