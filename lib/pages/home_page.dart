import 'package:drug_on/pages/bottom_sheet.dart';
import 'package:drug_on/pages/post_page.dart';
import 'package:scroll_app_bar/scroll_app_bar.dart';
import 'package:drug_on/pages/profile_page.dart';
import 'package:flutter/material.dart';


class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  TextStyle titleStyle = TextStyle(
    fontSize: 24,
    color: Colors.blue,
    fontWeight: FontWeight.bold,
  );
  final _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ScrollAppBar(
          controller: _controller,
          leading: Padding(
            padding: const EdgeInsets.only(left: 12, top: 8, bottom: 6),
            child: GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage())),
              child: CircleAvatar(
                radius: 0.5,
                backgroundImage: AssetImage('assets/images/profileHolder.jpeg'),
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.blue,
              ),
              onPressed: () => showModalBottomSheet(context:context, builder: (BuildContext buildContext)=>
                MyBottomSheet(),
              ),
            ),
          ],
          centerTitle: true,
          title: Text('DrugOn', style: titleStyle),
          elevation: .5,
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
        body: Snap(
          controller: _controller.appBar,
          child:ListView.builder(
            controller: _controller,
            itemBuilder: _listItems,
            itemCount: 100,
          ),
       ));
  }

  Widget _listItems(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        width: double.infinity,
        color: Theme.of(context).primaryColor,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePage())),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage:
                              AssetImage('assets/images/profileHolder.jpeg'),
                        ),
                      ),
                    ),
                    Text(
                      'ismail Abu Elmagd',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text('1hr'),
                    IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text('flaming bingo fing hinko yanko '
                  'bring yalla bingo yanas ya 3sl abo roaya wssl'),
            ),
            Container(
              width: double.infinity,
              child: Image.asset(
                'assets/images/flamingo.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton(
                  child: Row(children: [
                    Icon(
                      Icons.comment_outlined,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text('36'),
                    )
                  ]),
                  onPressed: () {},
                ),
                FlatButton(
                  child: Row(children: [
                    Icon(
                      Icons.arrow_circle_up,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text('100'),
                    )
                  ]),
                  onPressed: () {},
                ),
                FlatButton(
                  child: Row(children: [
                    Icon(
                      Icons.arrow_circle_down,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text('2'),
                    )
                  ]),
                  onPressed: () {},
                ),
                FlatButton(
                  child: Row(children: [
                    Icon(
                      Icons.share_outlined,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text('30'),
                    )
                  ]),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }




}
