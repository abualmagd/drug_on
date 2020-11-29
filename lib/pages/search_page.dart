//import 'dart:html';
import 'package:drug_on/pages/post_page.dart';

import 'package:flutter/material.dart';

import 'bottom_sheet.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        body:NestedScrollView(
          headerSliverBuilder: (BuildContext context,bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                floating: true,
                pinned: true,
                snap: true,
                leading: Padding(
                  padding: const EdgeInsets.only(left: 12, top: 8, bottom: 6),
                  child: CircleAvatar(
                    radius: 0.5,
                    backgroundImage: AssetImage(
                        'assets/images/profileHolder.jpeg'),
                  ),
                ),
                centerTitle: true,
                title: FlatButton(
                  color: Colors.grey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding:
                    const EdgeInsets.only(right: 70, top: 6, bottom: 8),
                    child: Text(
                      'search drugon',
                      style: TextStyle(color: Color(0xff7b68ee),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,),
                    ),
                  ),
                  onPressed: () {
                    showSearch(context: context, delegate: DataShow());
                  },
                ),
                actions: [
                  IconButton(icon: Icon(Icons.menu, color: Colors.blue,),
                    onPressed: () =>
                        showModalBottomSheet(context: context,
                          builder: (BuildContext buildContext) =>
                              MyBottomSheet(),
                        ),
                  ),
                ],

                bottom: TabBar(
                  isScrollable: true,
                  tabs: [
                    Tab(text: ('Latest'),),
                    Tab(text: ('Jobs'),),
                    Tab(text: ('Shop'),),
                    Tab(text: ('News'),),
                    Tab(text: ('Courses'),),
                    Tab(text: ('Events'),),
                  ],
                  //indicatorColor : Color(0xff7b68ee),
                  /* labelColor:Color(0xff7b68ee),
            unselectedLabelColor: Colors.black,*/
                ),
              ),
            ];
          },
        body: TabBarView(
          children: [
            Tab(text: ('Latest'),),
            Tab(text:('Jobs'),),
            Tab(text:('Shop'),),
            Tab(text:('News'),),
            Tab(text:('Courses'),),
            Tab(text:('Events'),),
          ],
        ),
      ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.edit,
            color: Colors.blue,
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PostPage()));
          },
          backgroundColor: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
class DataShow extends SearchDelegate<String>{
  @override
  ThemeData appBarTheme(BuildContext context) {
    return Theme.of(context);
  }
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
