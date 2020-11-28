import 'package:drug_on/pages/profile_page.dart';
import 'package:drug_on/services/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Theme
            .of(context)
            .primaryColor,
        child: Column(
          children: [
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
    );
  }
}







/*Widget _bottomSheet(BuildContext context){
  return Container(
    height: MediaQuery.of(context).size.height*0.60,
    child: Text('allah akbr'),
    color: Theme
        .of(context)
        .primaryColor,
  );

}*/

