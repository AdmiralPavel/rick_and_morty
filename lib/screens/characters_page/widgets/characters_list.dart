import 'package:flutter/material.dart';

import '../../../data/character.dart';
import 'character_list_item.dart';

class CharactersList extends StatelessWidget {
  final List<Character> characters;
  CharactersList({required this.characters});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: characters.length,
      itemBuilder: (context, index) {
        return CharacterListItem(
          character: characters[index],
        );
      },
    );
  }
}
