import 'package:drug_on/pages/profile_page.dart';
import 'package:drug_on/services/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme
            .of(context)
            .primaryColor,
        child: Column(
          children: [
            DrawerHeader(

              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(top: 22.0, left: 12),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                        onTap:()=>Navigator.push(context, MaterialPageRoute(builder: (

                            context) => ProfilePage())),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(
                              'assets/images/profileHolder.jpeg'),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, top: 20),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text('Account Name')),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: ListTile(
                        title: Text('Profile'),
                        leading: Icon(Icons.account_circle_outlined),
                        onTap: () =>
                            Navigator.push(context, MaterialPageRoute(builder: (
                                context) => ProfilePage())),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: ListTile(
                      title: Text('Saved'),
                      leading: Icon(Icons.list_alt_outlined),
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: ListTile(
                      title: Text('Events'),
                      leading: Icon(Icons.access_alarms_outlined),
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: ListTile(
                      title: Text('DrugOn Ads'),
                      leading: Icon(Icons.upload_outlined),
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: ListTile(
                      title: Text('Drafts'),
                      leading: Icon(Icons.library_books_rounded),
                      onTap: () {},
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ListTile(
                      title: Text('Settings'),
                      leading: Icon(Icons.settings_applications_outlined),
                      onTap: () {},
                    ),
                  ),

                ],
              ),
            ),
            Consumer<ThemeNotifier>(
              builder: (context, notifier, child) =>
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: SwitchListTile(
                      title: Text('Dark Mode'),
                      onChanged: (value) {
                        notifier.toggleTheme();
                      },
                      value: notifier.darkTheme,
                    ),
                  ),
            ),

          ],
        ),
      ),
    );
  }
}
