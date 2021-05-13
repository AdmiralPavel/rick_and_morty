import 'package:flutter/material.dart';
import 'package:rick_and_morty/components/characters_grid.dart';
import 'package:rick_and_morty/components/characters_list.dart';
import 'package:rick_and_morty/components/search_bar.dart';
import 'package:rick_and_morty/resources/icons.dart';
import 'package:rick_and_morty/resources/variables.dart';
import 'package:rick_and_morty/theme/text_theme.dart';

class CharactersPage extends StatefulWidget {
  @override
  _CharactersPageState createState() => _CharactersPageState();
}

class _CharactersPageState extends State<CharactersPage> {
  final characters = Variables.characters;
  bool listView = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 12,
            ),
            SearchBar(),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Text(
                    "ВСЕГО ПЕРСОНАЖЕЙ: ${characters.length}",
                    style: CustomTextTheme.minorTextStyle,
                  ),
                  Spacer(),
                  IconButton(
                    icon:
                        listView ? CustomIcons.listView : CustomIcons.gridView,
                    onPressed: () {
                      setState(() {
                        listView = !listView;
                      });
                    },
                  )
                ],
              ),
            ),
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
    );
  }
}
