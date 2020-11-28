
import 'package:drug_on/pages/home_page.dart';
import 'package:drug_on/pages/message_page.dart';
import 'package:drug_on/pages/notification_page.dart';

import 'package:drug_on/pages/search_page.dart';
import 'package:drug_on/pages/video_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var _currentIndex = 0;
  final tabs = [
    FirstPage(),
    SearchPage(),
    VideoPage(),
    NotificationPage(),
    MessagePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: tabs[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        //type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedFontSize: 18,
        unselectedFontSize: 14,
        elevation: 2,
        items: [
          BottomNavigationBarItem(label: ('Home'),
            icon: Icon(Icons.home_outlined),
            backgroundColor: Theme
                .of(context)
                .primaryColor,
          ),
          BottomNavigationBarItem(label: ('Discover'),
            icon: Icon(Icons.search_outlined),
            backgroundColor: Theme
                .of(context)
                .primaryColor,
          ),
          BottomNavigationBarItem(label: ('Video'),
            icon: Icon(Icons.video_collection_outlined)
            , backgroundColor: Theme
                .of(context)
                .primaryColor,
          ),
          BottomNavigationBarItem(icon:Icon(Icons.notifications_outlined),
            label: ('Notification'),
            backgroundColor: Theme
                .of(context)
                .primaryColor,
          ),

          BottomNavigationBarItem(label: ('Message'),
            icon: Icon(Icons.message_outlined),
            backgroundColor: Theme
                .of(context)
                .primaryColor,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex=index;
          });
        },
      ),
    );

}
}