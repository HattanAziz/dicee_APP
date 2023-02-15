import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber =1;
  int rgihtDiceNumber=1;
  void all(){
    setState(() {
      leftDiceNumber=Random().nextInt(6)+1;
      rgihtDiceNumber=Random().nextInt(6)+1;
      print('l_diceNumper= $leftDiceNumber');
    });
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[

          Expanded(

            child: FlatButton(
              onPressed: () {
                all();

              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(

            child: FlatButton(
              onPressed: () {
                all();
              },

              child: Image.asset('images/dice$rgihtDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}


