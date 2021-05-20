import 'package:flutter/material.dart';
import 'package:rick_and_morty/resources/icons.dart';
import 'package:rick_and_morty/screens/characters_page/screen.dart';
import 'package:rick_and_morty/screens/episodes_page/screen.dart';
import 'package:rick_and_morty/screens/locations_page/screen.dart';
import 'package:rick_and_morty/screens/settings_page/settings_page.dart';
import 'package:rick_and_morty/theme/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rick and Morty',
      theme: AppTheme.lightAppTheme,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _page = 0;
  var _pages = [
    CharactersPage(),
    LocationsPage(),
    EpisodesPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        selectedItemColor: Colors.green,
        items: [
          BottomNavigationBarItem(
            icon: CustomIcons.characters,
            label: 'Персонажи',
          ),
          BottomNavigationBarItem(
            icon: CustomIcons.locations,
            label: 'Локации',
          ),
          BottomNavigationBarItem(
            icon: CustomIcons.episodes,
            label: 'Эпизоды',
          ),
          BottomNavigationBarItem(
            icon: CustomIcons.settings,
            label: 'Настройки',
          ),
        ],
      ),
    );
  }
}
