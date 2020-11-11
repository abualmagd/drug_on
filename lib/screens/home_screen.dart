
import 'dart:ui';
import 'package:drug_on/pages/home_page.dart';
import 'package:drug_on/pages/search_page.dart';
import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
TextStyle titleStyle=TextStyle(fontSize:24,color: Colors.white60,fontWeight: FontWeight.bold,
);
var _currentIndex=0;
final tabs=[
  FirstPage(),
  SearchPage(),
  Center(child: Text('VIDEO'),),
  Center(child: Text('MESSAGE'),),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        centerTitle: true,
        title:Text('DrugOn',style: titleStyle,),
        backgroundColor: Color(0xFF6200EE),
      ),*/
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:_currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF6200EE),
        selectedItemColor: Colors.amberAccent,
        unselectedItemColor: Colors.white60,
        selectedFontSize: 16,
        unselectedFontSize: 14,
        items: [
          BottomNavigationBarItem(label:('home'),
              icon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(label:('search'),
              icon: Icon(Icons.search_outlined),
          ),
          BottomNavigationBarItem(label:('video'),
              icon: Icon(Icons.video_collection_outlined),
          ),
          BottomNavigationBarItem(label:('message'),
              icon: Icon(Icons.message_outlined),
          ),
        ],
        onTap: (index){
          setState(() {
            _currentIndex=index;
          });
        },
      ),
    );
  }
}
