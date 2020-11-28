import 'package:drug_on/pages/profile_page.dart';
import 'package:flutter/material.dart';

import 'bottom_sheet.dart';
class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}
TextStyle titleStyle=TextStyle(fontSize:24,color:Colors.blue,fontWeight: FontWeight.bold,
);
class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 12, top: 8, bottom: 6),
          child: GestureDetector(
            onTap: () =>  Navigator.push(context, MaterialPageRoute( builder: (context)=>ProfilePage())),
            child: CircleAvatar(
              radius: 0.5,
              backgroundImage: AssetImage('assets/images/profileHolder.jpeg'),
            ),
          ),
        ),

        actions: [
          IconButton(icon: Icon(Icons.menu,color:Colors.blue), onPressed: () => showModalBottomSheet(context:context, builder: (BuildContext buildContext)=>
        MyBottomSheet(),
    ),

          ),
        ],

        centerTitle: true,
        title: Text('Notification', style: titleStyle),
        elevation: .5,
      ),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
