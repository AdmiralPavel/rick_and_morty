import 'package:flutter/material.dart';
import 'package:rick_and_morty/data/character.dart';
import 'package:rick_and_morty/theme/text_theme.dart';

class CharacterListItem extends StatelessWidget {
  final Character character;

  CharacterListItem({required this.character});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 16,
      ),
      child: Row(
        children: [
          CircleAvatar(
            foregroundImage: AssetImage(character.image),
            radius: 37,
          ),
          SizedBox(
            width: 18,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                character.race + ', ' + character.sex,
                style: CustomTextTheme.descriptionTextStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
