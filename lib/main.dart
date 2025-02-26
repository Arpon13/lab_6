
import 'package:flutter/material.dart';

void main() {
  runApp(Lab_6());
}

class Lab_6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter UI'),
          backgroundColor: Colors.blue,
          foregroundColor: const Color.fromARGB(255, 11, 9, 9),
        ),
        body: Center(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            margin: EdgeInsets.all(30),
            padding: EdgeInsets.all(30),
            alignment: Alignment.center,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.blue, 
            boxShadow: [BoxShadow(color: Colors.black, blurRadius: 10)]),
            
            child: Text('Hello World!'),
          )
        ),
      ),
      
    );
  }
}