//import 'dart:html';

//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class MessageBox extends StatefulWidget {
  @override
  _MessageBoxState createState() => _MessageBoxState();
}

class _MessageBoxState extends State<MessageBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('friend name'),
        actions: [
          IconButton(icon:Icon(Icons.notifications_off_outlined) , onPressed: (){}),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('hjkkjhjkkhhj'),
                Text('hjkkjhjkkhhj'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('hjkkjhjkkhhj'),
                Text('hjkkjhjkkhhj'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('hjkkjhjkkhhj'),
                Text('hjkkjhjkkhhj'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('hjkkjhjkkhhj'),
                Text('hjkkjhjkkhhj'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('hjkkjhjkkhhj'),
                Text('hjkkjhjkkhhj'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('hjkkjhjkkhhj'),
                Text('hjkkjhjkkhhj'),
              ],
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('hjkkjhjkkhhj'),
                Text('hjkkjhjkkhhj'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('hjkkjhjkkhhj'),
                Text('hjkkjhjkkhhj'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('hjkkjhjkkhhj'),
                Text('hjkkjhjkkhhj'),
              ],
            ),
          ),


        ],
      ),
      bottomSheet: _inputMessage(context),
    );
  }
  Widget _inputMessage(BuildContext context){
    return SingleChildScrollView(
      child: TextField(
        textInputAction: TextInputAction.newline,
        keyboardType: TextInputType.multiline,
        maxLines: 3,
        minLines: 1,
        decoration: InputDecoration(
          border:OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          prefixIcon: IconButton(icon: Icon(Icons.photo), onPressed: (){}),
          filled: true,
          fillColor: Theme.of(context).primaryColor,
          suffixIcon: IconButton(icon: Icon(Icons.send), onPressed: (){}),
        ),
      ),
    );


    /*Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          IconButton(icon: Icon(Icons.photo), onPressed: (){}),
          TextField(
            keyboardType: TextInputType.text,
            maxLines: 1,
          ),
          IconButton(icon: Icon(Icons.send_outlined), onPressed: (){}),
        ],
        ),
    );*/
}
}
