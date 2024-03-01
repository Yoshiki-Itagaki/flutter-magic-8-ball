import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: TitleText(),
          ),
          body: Magic8Ball(),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );

class TitleText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Ask Me Anything',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
      ),
    );
  }
}

class Magic8Ball extends StatefulWidget {
  @override
  _Magic8BallState createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int indexNumber = 1;

  void getIndex() {
    setState(() {
      indexNumber = Random().nextInt(5) + 1;
    });
    print(indexNumber);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                getIndex();
              },
              child: Image.asset('images/ball$indexNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
