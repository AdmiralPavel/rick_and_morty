import 'package:flutter/material.dart';
import 'package:rick_and_morty/components/characters_list.dart';

class CharactersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child:
      CharactersList(),
    );
  }
}
