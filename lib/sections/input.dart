import 'package:flutter/material.dart';
import '../general/hex.dart';

class AddTransaction extends StatelessWidget{

  final title = TextEditingController();
  final type = TextEditingController();
  final amount = TextEditingController();
  final emotion = TextEditingController();

  @override 
  Widget build(BuildContext context){
    return Card(
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

                  // onChanged: (val){title=val;},
                  controller: title,

                ),

                    SizedBox(height: 15,),

                      TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Type of Entry',
                          hintStyle: TextStyle(color: Colors.grey),
                          enabledBorder: UnderlineInputBorder(      
                          borderSide: BorderSide(color: Colors.white),   
                          ),  
                          ),

                        // onChanged: (val) => type=val,
                        controller: type,

                      ),

                      SizedBox(height: 15,),
                      
                      TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Amount',
                          hintStyle: TextStyle(color: Colors.grey),
                          enabledBorder: UnderlineInputBorder(      
                          borderSide: BorderSide(color: Colors.white),   
                          ),  
                          ),

                          // onChanged: (val) => amount=val,
                          controller: amount,
                      ),

                      SizedBox(height: 15,),

                      TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                         hintText: 'Your feeling?',
                          hintStyle: TextStyle(color: Colors.grey),
                          enabledBorder: UnderlineInputBorder(      
                          borderSide: BorderSide(color: Colors.white),   
                          ),  
                          ),
                        controller: emotion,
                        // onChanged: (val) => emotion=val,

                      ),

                      SizedBox(height: 15,),

                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ElevatedButton(onPressed: (){
                          print(title);
                          // Expense(id: 2, expense_title: title, type: type, amount: amount.,)
                        }, child: Text('Add')),
                      )

                    ],
                  ),
                ),
              );
  }
}