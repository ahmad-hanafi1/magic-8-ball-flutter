import 'package:flutter/material.dart';
import "dart:math";

void main() => runApp(magicBall());

class magicBall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text(
            "Ask me anything",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue[900],
        ),
        body: BallImage(),
      ),
    );
  }
}

class BallImage extends StatefulWidget {
  @override
  State<BallImage> createState() => _BallImageState();
}

class _BallImageState extends State<BallImage> {
  int imageNumber = Random().nextInt(5) + 1;

  void changeImage() {
    setState(() {
      imageNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Image.asset("images/ball$imageNumber.png"),
        onPressed: () {
          print("Hello I'm magic ball!");
          changeImage();
        },
      ),
    );
  }
}
