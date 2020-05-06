//import 'dart:html';
import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text('Ask me anything'),
        backgroundColor: Colors.blue,
      ),
      body: BallFull(),
    );
  }
}

class BallFull extends StatefulWidget {
  @override
  _BallFullState createState() => _BallFullState();
}

class _BallFullState extends State<BallFull> {
  int ballNo = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                  setState(() {
                    
                    ballNo = Random().nextInt(5) + 1;
                    print(ballNo);
                  });
                },
                
              child: Image.asset("images/ball$ballNo.png"),
              
            ),
          ),
        ],
      ),
    );
  }
}
