
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart';
import 'package:drug_on/services/theme_provider.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (_) => ThemeNotifier(),
      child: Consumer<ThemeNotifier>(
        builder: (context, ThemeNotifier notifier, child) {
          return
            MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Drug On',
              theme: notifier.darkTheme?dark:light,
              home: MyHomePage(),
            );
        },
      ),
    );
  }

}

