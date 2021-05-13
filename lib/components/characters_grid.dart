import 'package:flutter/material.dart';
import 'package:rick_and_morty/components/character_grid_item.dart';

class CharactersGrid extends StatelessWidget {
  final characters;

  CharactersGrid({required this.characters});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: characters.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return CharacterGridItem(
          character: characters[index],
        );
      },
    );
  }
}
