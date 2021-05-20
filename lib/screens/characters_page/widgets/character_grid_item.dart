import 'package:flutter/material.dart';
import 'package:rick_and_morty/screens/profile_page/screen.dart';
import 'package:rick_and_morty/theme/text_theme.dart';

import '../../../data/character.dart';

class CharacterGridItem extends StatelessWidget {
  final Character character;

  CharacterGridItem({required this.character});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => ProfilePage(character: character,),
        ),
      ),
      child: Column(
        children: [
          CircleAvatar(
            foregroundImage: AssetImage(character.image),
            radius: 60,
          ),
          SizedBox(
            height: 18,
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
            character.race + ', ' + character.sex,
            style: CustomTextTheme.descriptionTextStyle,
          ),
        ],
      ),
    );
  }
}
