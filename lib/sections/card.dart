import 'package:flutter/material.dart';
import '../general/hex.dart';

class CardeExp extends StatelessWidget{

  final Icon icon;
  String title;
  double amount;

  CardeExp({this.icon=const Icon(Icons.money, color: Colors.lightBlueAccent,), this.title='I spent', this.amount=0});

  @override 
  Widget build(BuildContext context){
    return Container(width: double.infinity, 
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: Card(
                        color: HexColor('212230'),
                        elevation: 10,
                        
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: icon,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(title, style: TextStyle(color: Colors.white),),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Icon(Icons.attach_money_rounded, color: Colors.white,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: Text(amount.toString(), style: TextStyle(color: Colors.white),),
                            ),
                          ],
                        ),
                      ),
                    ),
                 );
  }
}