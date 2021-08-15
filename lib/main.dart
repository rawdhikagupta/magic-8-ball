import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue[800],
          title: Center(
            child: Text('Ask Me Anything',
              style: TextStyle(
                color: Colors.white,
              ),),
          ),
        ),
        body: MainBody(),
      ),
    ),
  );
}
class MainBody extends StatefulWidget {

  @override
  _MainBodyState createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  int number =1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child:
      Expanded(
        child:
        FlatButton(
          onPressed: (){
            setState(() {
              number = Random().nextInt(5)+1;
            });
            print('image is pressed');
          },
          child: Image.asset('images/ball$number.png'),
        )
      ),
    );
  }
}

