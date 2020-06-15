import 'package:flutter/material.dart';

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
  var leftcard = '2H';
  var rightcard = '3H';
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  leftcard = 'AC';
                });
              },
              child: Image.asset('images/$leftcard.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  rightcard = 'AS';
                });
              },
              child: Image.asset('images/$rightcard.png'),
            ),
          ),
        ],
      ),
    );
  }
}
