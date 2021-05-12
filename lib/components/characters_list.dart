import 'package:flutter/material.dart';
import 'package:rick_and_morty/components/character_item.dart';
import 'package:rick_and_morty/recources/variables.dart';

class CharactersList extends StatelessWidget {
  final characters = Variables.characters;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: characters.length,
      itemBuilder: (context, index) {
        return CharacterItem(
          character: characters[index],
        );
      },
    );
  }
}
