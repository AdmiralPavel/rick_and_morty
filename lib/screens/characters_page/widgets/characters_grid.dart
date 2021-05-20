import 'package:flutter/material.dart';

import '../../../data/character.dart';
import 'character_grid_item.dart';

class CharactersGrid extends StatelessWidget {
  final List<Character> characters;

  CharactersGrid({required this.characters});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: characters.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.85,
      ),

      itemBuilder: (context, index) {
        return CharacterGridItem(
          character: characters[index],
        );
      },
    );
  }
}
