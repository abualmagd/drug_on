//import 'dart:html';

import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF6200EE),
          leading: Padding(
            padding: const EdgeInsets.only(left: 12,top: 8,bottom:6),
            child: CircleAvatar(
              radius: 0.5,
              backgroundColor: Colors.black,
            ),
          ),
          centerTitle: true,
          title: FlatButton(
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding:
                  const EdgeInsets.only(right: 100,top: 8, bottom: 8),
              child: Text(
                'search drugon',
                style: TextStyle(color: Colors.grey,
                    fontWeight: FontWeight.bold,
                fontSize: 20,),
              ),
            ),
            onPressed: () {
              showSearch(context: context, delegate: DataShow());
            },
          ),
          bottom: TabBar(
            tabs: [
              Tab(text:('Jobs'),),
              Tab(text:('News'),),
              Tab(text:('Courses'),),
              Tab(text:('Events'),),
            ],
           indicatorColor : Colors.amberAccent,
            labelColor: Colors.amberAccent,
            unselectedLabelColor: Colors.white,
          ),
        ),
        body: TabBarView(
          children: [
            Tab(text:('Jobs'),),
            Tab(text:('News'),),
            Tab(text:('Courses'),),
            Tab(text:('Events'),),
          ],
        ),
      ),
    );
  }
}
class DataShow extends SearchDelegate<String>{
  List names=[
    "ahmed",
    "ismail",
    'wallid',
    'hassan'
    'farouk',
    'galal'
  ];
   final recentNames=['galal','hassan','ismail'];

  @override
  List<Widget> buildActions(BuildContext context) {
    // actions
    return[
    IconButton(
      icon: Icon(Icons.clear),
      onPressed: (){
        query='';
      },
    ),];
  }

  @override
  // ignore: missing_return
  Widget buildLeading(BuildContext context) {
    // leading back
    /* IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: (){},
    );*/
  }

  @override
  Widget buildResults(BuildContext context) {
    // results
    return Center(
        child: Container(
          height: 100,
          width: 100,
          child: Center(child:Text(query)),
          color: Colors.red,
        ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // suggestion

    final suggestionList =query.isEmpty?recentNames:names.where((p)
   =>p.startsWith(query)).toList();
    return ListView.builder(

      itemBuilder:(context,index)=>ListTile(
        onTap:(){showResults(context);},
      leading: Icon(Icons.dynamic_feed_rounded),
      title:RichText(
        text:TextSpan(
          text: suggestionList[index].substring(0,query.length),style: TextStyle(
          color: Colors.black,fontWeight: FontWeight.bold,
        ),
          children: [
            TextSpan(
              text: suggestionList[index].substring(query.length),style: TextStyle(
              color: Colors.grey,
            ),
            ),
          ],
        ),
      ),
    ),
      itemCount: suggestionList.length,
    );
  }
  
}
