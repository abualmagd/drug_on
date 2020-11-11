import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  TextStyle titleStyle=TextStyle(fontSize:24,color: Colors.white60,fontWeight: FontWeight.bold,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius:0.5,
              backgroundColor: Colors.black,
            ),
          ),
          centerTitle: true,
          title:Text('DrugOn',style: titleStyle,),
          backgroundColor: Color(0xFF6200EE),
        ),
      body: Container(
        color: Colors.white60,
      ),
    );
  }
}
