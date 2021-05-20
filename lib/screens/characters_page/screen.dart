import 'package:flutter/material.dart';
import 'package:rick_and_morty/resources/variables.dart';
import 'package:rick_and_morty/screens/characters_page/widgets/characters_grid.dart';
import 'package:rick_and_morty/screens/characters_page/widgets/characters_list.dart';

import '../../components/search_bar.dart';
import '../../resources/icons.dart';
import '../../theme/text_theme.dart';

class CharactersPage extends StatefulWidget {
  @override
  _CharactersPageState createState() => _CharactersPageState();
}

class _CharactersPageState extends State<CharactersPage> {
  final characters = Variables.characters;
  bool listView = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: SearchBar(
          hint: 'Найти персонажа',
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Text(
                  "ВСЕГО ПЕРСОНАЖЕЙ: ${characters.length}",
                  style: CustomTextTheme.minorTextStyle,
                ),
                Spacer(),
                IconButton(
                  icon: listView ? CustomIcons.listView : CustomIcons.gridView,
                  onPressed: () {
                    setState(() {
                      listView = !listView;
                    });
                  },
                )
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              listView
                  ? Expanded(
                      child: CharactersList(
                        characters: characters,
                      ),
                    )
                  : Expanded(
                      child: CharactersGrid(
                        characters: characters,
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
