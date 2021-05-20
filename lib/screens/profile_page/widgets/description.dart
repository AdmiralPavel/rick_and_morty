import 'package:flutter/material.dart';

import '../../../data/character.dart';
import '../../../resources/icons.dart';

class Description extends StatelessWidget {
  final Character character;

  Description({required this.character});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(character.name),
        Text(character.status),
        Text(character.description),
        Row(
          children: [
            Column(
              children: [
                Text('Пол'),
                Text(character.sex),
              ],
            ),
            Column(
              children: [
                Text('Раса'),
                Text(character.race),
              ],
            )
          ],
        ),
        Row(
          children: [
            Column(
              children: [
                Text('Место рождения'),
                Text(
                  character.bornPlace.name,
                ),
              ],
            ),
            CustomIcons.rightArrow
          ],
        ),
        Row(
          children: [
            Column(
              children: [
                Text('Местоположение'),
                Text(
                  character.currentPlace.name,
                ),
              ],
            ),
            CustomIcons.rightArrow
          ],
        ),
      ],
    );
  }
}
