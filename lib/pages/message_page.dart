import 'package:drug_on/pages/profile_page.dart';
import 'package:drug_on/subPages/message_box.dart';
import 'package:flutter/material.dart';

import 'bottom_sheet.dart';
import 'package:scroll_app_bar/scroll_app_bar.dart';


class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}
TextStyle titleStyle=TextStyle(fontSize:24,color:Colors.blue,fontWeight: FontWeight.bold,
);
class _MessagePageState extends State<MessagePage> {
  final _controller=ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ScrollAppBar(
        controller: _controller,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12, top: 8, bottom: 6),
          child: GestureDetector(
            onTap: () =>
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage())),
            child: CircleAvatar(
              radius: 0.5,
              backgroundImage: AssetImage('assets/images/profileHolder.jpeg'),
            ),
          ),
        ),

        actions: [
          IconButton(icon: Icon(Icons.menu,color: Colors.blue,),
            onPressed: () => showModalBottomSheet(context:context, builder: (BuildContext buildContext)=>
                MyBottomSheet(),
            ),

          ),
        ],

        centerTitle: true,
        title: Text('Message', style: titleStyle),
        elevation: .5,
      ),
      body: Snap(
        controller: _controller.appBar,
        child: ListView.builder(
          controller:_controller,
          itemBuilder:_listItems ,
          itemCount: 100,
        ),
      )
    );
  }
  Widget _listItems(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.only(top:2.0),
      child:InkWell(
        child: Container(
          color: Theme.of(context).primaryColor,
          //height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(

                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () =>
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => ProfilePage())),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/images/profileHolder.jpeg'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom:16),
                    child: Text('Friend name',style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right:6),
                child: Text('1d'),
              ),
            ],
          ),
        ),
        onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>MessageBox())),
      ),
    );
  }
}



