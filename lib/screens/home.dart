import 'package:financy/general/hex.dart';
import 'package:flutter/material.dart';
import '../sections/brand.dart';
import '../general/expense.dart';
import '../sections/card.dart';

class Home extends StatefulWidget{
  HomeState createState()=> HomeState();
}

class HomeState extends State<Home>{

  void ok(){
    print('ok');
  }

  final List<Expense> expense = [
    Expense(id: 2, expense_title: 'Doge', type: 'crypto--', amount: 3200, your_emotion: 'sad', date: DateTime.now()),
    Expense(id: 3, expense_title: 'Lays', type: 'spent', amount: 20, your_emotion: 'sad', date: DateTime.now()),
    Expense(id: 4, expense_title: 'Ethereum', type: 'crypto++', amount: 4000, your_emotion: 'happy', date: DateTime.now()),
    Expense(id: 2, expense_title: 'Doge', type: 'crypto--', amount: 3200, your_emotion: 'sad', date: DateTime.now()),
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
                    return CardeExp(title: ex.expense_title, amount: ex.amount,icon: ex.type=='crypto--' ? Icon(Icons.trending_down, color: Colors.red,) : ex.type=='crypto++' ? Icon(Icons.trending_up, color: Colors.green) : Icon(Icons.money, color: Colors.lightBlueAccent,),);
                  }
                  ).toList(),
              ),

              SizedBox(height: 15,),

              Card(
                color: HexColor('212230'),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
              
                    children: [
                      Text('Add a new finance :)', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                      TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Title of entry',
                          hintStyle: TextStyle(color: Colors.grey),
                          labelStyle: TextStyle(color: Colors.white),
                          enabledBorder: UnderlineInputBorder(      
                          borderSide: BorderSide(color: Colors.white),   
                          ),
                          focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.cyan),
                     ),    
                   ),
                ),

                    SizedBox(height: 15,),

                      TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Title of entry',
                          hintStyle: TextStyle(color: Colors.grey),
                          enabledBorder: UnderlineInputBorder(      
                          borderSide: BorderSide(color: Colors.white),   
                          ),  
                          ),
                      ),

                      SizedBox(height: 15,),
                      
                      TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Title of entry',
                          hintStyle: TextStyle(color: Colors.grey),
                          enabledBorder: UnderlineInputBorder(      
                          borderSide: BorderSide(color: Colors.white),   
                          ),  
                          ),
                      ),

                      SizedBox(height: 15,),

                      TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                         hintText: 'Title of entry',
                          hintStyle: TextStyle(color: Colors.grey),
                          enabledBorder: UnderlineInputBorder(      
                          borderSide: BorderSide(color: Colors.white),   
                          ),  
                          ),
                      ),

                      SizedBox(height: 15,),

                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ElevatedButton(onPressed: (){}, child: Text('Add')),
                      )

                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}