import 'package:flutter/material.dart';
import '../general/expense.dart';
import '../sections/card.dart';

class AllTransactions extends StatelessWidget{

  final List<Expense> expense = [
    Expense(id: 2, expense_title: 'Doge', type: 'crypto--', amount: 3200, your_emotion: 'sad', date: DateTime.now()),
    Expense(id: 3, expense_title: 'Lays', type: 'spent', amount: 20, your_emotion: 'sad', date: DateTime.now()),
    Expense(id: 4, expense_title: 'Ethereum', type: 'crypto++', amount: 4000, your_emotion: 'happy', date: DateTime.now()),
    Expense(id: 2, expense_title: 'Doge', type: 'crypto--', amount: 3200, your_emotion: 'sad', date: DateTime.now()),
  ];

  @override 
  Widget build(BuildContext context){
    return Column(
                children: expense.map(
                  (ex) {
                    return CardeExp(title: ex.expense_title, amount: ex.amount,icon: ex.type=='crypto--' ? Icon(Icons.trending_down, color: Colors.red,) : ex.type=='crypto++' ? Icon(Icons.trending_up, color: Colors.green) : Icon(Icons.money, color: Colors.lightBlueAccent,),);
                  }
                  ).toList(),
              );
  }
}