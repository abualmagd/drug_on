import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class DefinedPostPage extends StatefulWidget {
  @override
  _DefinedPostPage createState() => _DefinedPostPage();
}

class _DefinedPostPage extends State<DefinedPostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        actions: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: FlatButton(onPressed: (){}, child:Text('Save',),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              color: Colors.blueGrey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: FlatButton(onPressed: (){}, child:Text('Post',),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              color: Colors.green,),
          ),

        ],
      ),
      body:SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              color: Theme
                  .of(context)
                  .primaryColor,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8,),
                child: TextField(
                  style: TextStyle(
                    fontSize: 25,
                  ),
                  keyboardType: TextInputType.multiline,
                  maxLines: 21,

                ),
              ),
            ),

          ],
        ),
      ),

      bottomSheet: Container(
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(icon: Icon(Icons.photo), onPressed: (){}),
              IconButton(icon: Icon(Icons.camera_alt_outlined), onPressed: (){}),
              IconButton(icon: Icon(Icons.location_on_outlined), onPressed: (){}),
              IconButton(icon: Icon(Icons.attachment_outlined), onPressed: (){}),
            ],
          ),
        ),
      ),

    );
  }
}