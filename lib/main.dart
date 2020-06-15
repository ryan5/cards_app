import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Cards'),
          backgroundColor: Colors.red,
        ),
        body: CardsPage(),
      ),
    ),
  );
}

class CardsPage extends StatefulWidget {
  @override
  _CardsPageState createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
  int leftCard = 1;
  int rightCard = 1;

  void changeCardFace(){
    setState(() {
      leftCard = Random().nextInt(52)+1;
      rightCard = Random().nextInt(52)+1;
    });

  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: (){
                changeCardFace();
              },
              child: Image.asset('images/$leftCard.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                changeCardFace();
              },
              child: Image.asset('images/$rightCard.png'),
            ),
          ),
        ],
      ),
    );
  }
}
