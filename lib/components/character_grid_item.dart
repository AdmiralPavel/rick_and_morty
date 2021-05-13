import 'package:flutter/material.dart';
import 'package:rick_and_morty/theme/text_theme.dart';

class CharacterGridItem extends StatelessWidget {
  final character;

  CharacterGridItem({required this.character});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          foregroundImage: AssetImage(character.image),
          radius: 60,
        ),
        SizedBox(
          height: 18  ,
        ),
        Text(
          character.status,
          style: character.status == 'ЖИВОЙ'
              ? CustomTextTheme.aliveTextStyle
              : CustomTextTheme.deadTextStyle,
        ),
        Text(
          character.name,
          style: CustomTextTheme.nameTextStyle,
        ),
        Text(
          character.description,
          style: CustomTextTheme.descriptionTextStyle,
        ),
      ],
    );
  }
}
