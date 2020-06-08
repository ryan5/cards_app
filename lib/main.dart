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

class CardsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: (){
                print('left card pressed.');
              },
              child: Image.asset('images/2H.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                print('right card pressed.');
              },
              child: Image.asset('images/2S.png'),
            ),
          ),
        ],
      ),
    );
  }
}
