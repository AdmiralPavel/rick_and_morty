import 'package:flutter/material.dart';
import 'package:rick_and_morty/components/character_list_item.dart';

class CharactersList extends StatelessWidget {
  final characters;
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
