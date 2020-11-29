
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class PostPage extends StatefulWidget {
  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  String _value='Post';
  var  _image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.clear_sharp),
          onPressed: ()=>Navigator.pop(context),
        ),
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
                            color: Theme.of(context).primaryColor,
                            width:double.infinity,
                            height: 60,
                            child: Padding(
                              padding: const EdgeInsets.only(top:8.0,left: 8),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage('assets/images/profileHolder.jpeg'),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 16,),
                                    child: DropdownButton(
                                      value: _value,
                                        items: [
                                      DropdownMenuItem(
                                        child: Text('Add a Post'),
                                        value: 'Post',
                                      ),
                                      DropdownMenuItem(
                                        child: Text('Add a Jop'),
                                        value: 'Jop',
                                      ),
                                      DropdownMenuItem(
                                        child: Text('Add a Sale'),
                                        value: 'Shop',
                                      ),
                                      DropdownMenuItem(
                                        child: Text('Add a Course'),
                                        value: 'Course',
                                      ),
                                      DropdownMenuItem(
                                        child: Text('Add an Event'),
                                        value: 'Event',
                                      ),
                                    ], onChanged:(value){
                                      setState(() {
                                        _value=value;
                                        print(value);
                                      });
                                    }),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            color: Theme.of(context).primaryColor,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0, right: 8,),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    TextField(
                                      style: TextStyle(
                                        fontSize: 25,
                                      ),
                                      keyboardType: TextInputType.multiline,
                                      maxLines: 10,
                                      decoration: InputDecoration(

                                      ),
                                    ),
                                    Container(
                                      child: _image !=null?Image.file(_image):null,
                                      height: 400,
                                      width: double.infinity,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
      ),

      bottomSheet: Container(
        color: Theme.of(context).primaryColor,
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
