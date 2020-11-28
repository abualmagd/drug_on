import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
ThemeData light=ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.indigo,
  primaryColor: Colors.white,
  scaffoldBackgroundColor:Colors.white60,
    canvasColor: Colors.white,
    backgroundColor: Colors.white,

    bottomNavigationBarTheme:BottomNavigationBarThemeData(
      unselectedItemColor: Colors.grey,
      selectedItemColor:Colors.blue,
      //backgroundColor: Colors.white,

    ),
  tabBarTheme: TabBarTheme(
    unselectedLabelColor: Colors.black,
    labelColor: Colors.blue,
  ),
);

ThemeData dark=ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.blue,
  primaryColor: Color(0xff192841),
  //scaffoldBackgroundColor:Color(0xff152238),
    scaffoldBackgroundColor: Colors.blueGrey,
  accentColor: Color(0xff7b68ee),
  indicatorColor: Color(0xff7b68ee),
  bottomNavigationBarTheme:BottomNavigationBarThemeData(
    unselectedItemColor: Colors.grey,
    selectedItemColor: Colors.blue,
    //backgroundColor:Color(0xff192841),
  ),
    tabBarTheme: TabBarTheme(
      unselectedLabelColor: Colors.white,
      labelColor: Colors.blue,
    )
);

class ThemeNotifier extends ChangeNotifier {
  final String key = "theme";
  SharedPreferences _pref;

  bool _darkTheme;

  bool get darkTheme => _darkTheme;

  ThemeNotifier() {
    _darkTheme = false;
    _loadFromPrefs();
  }

  toggleTheme() {
    _darkTheme = !_darkTheme;
    _saveToPrefs();
    notifyListeners();
  }


  _initPrefs() async {
    if (_pref == null)
      _pref=await SharedPreferences.getInstance();
  }
  _loadFromPrefs()async{
    await _initPrefs();
    _darkTheme=_pref.getBool(key)??true;
    notifyListeners();
  }
  _saveToPrefs()async{
    await _initPrefs();
    _pref.setBool(key, _darkTheme);
  }
}