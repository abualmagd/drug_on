
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: ListView(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: double.infinity,
                color: Colors.purple,
                height: 310,
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundImage:
                        AssetImage('assets/images/profileHolder.jpeg'),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'account name',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            letterSpacing: 3,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FlatButton(onPressed: (){}, child:Text('100 Followers')),
                          FlatButton(onPressed: (){}, child: Text('10 Following')),
                          FlatButton(onPressed: (){}, child: Text('500 Votes up')),
                        ],
                      ),
                      FlatButton(
                        color: Colors.blue,
                          child: Text(
                            'Edit Profile',
                          ),
                          onPressed: () {}),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Container(
            child: Column(
              children: [
                divider(context),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: editableCard(context, 'Job', 'write about your job'),
                ),
                divider(context),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: editableCard(context, 'Experience', 'write about your experience'),
                ),
                divider(context),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: editableCard(context, 'Education', 'write about your education'),
                ),
                divider(context),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: editableCard(context, 'Language', 'write about your job'),
                ),
                divider(context),

              ],
            ),
          ),
        ],
      ),
    );

  }
}


Widget editableCard (BuildContext context,String _title,String _content){
  return Container(
    color: Theme.of(context).primaryColor,
    height: 120,

    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(_title,style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),),
            ),
            IconButton(icon: Icon(Icons.edit), onPressed: (){})
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left:8.0),
          child: Text(_content,
          textAlign: TextAlign.left,
          overflow: TextOverflow.ellipsis,
          maxLines: 3,),
        ),
      ],
    ),
  );
}
Widget divider(BuildContext context){
  return Container(
    height: 12,
    width: double.infinity,
    color: Colors.white60,
  );
}