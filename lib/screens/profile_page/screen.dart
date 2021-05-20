import 'package:flutter/material.dart';
import 'package:rick_and_morty/screens/profile_page/widgets/description.dart';
import 'package:rick_and_morty/screens/profile_page/widgets/episodes.dart';

import '../../data/character.dart';
import '../../resources/images.dart';

class ProfilePage extends StatelessWidget {
  final Character character;

  ProfilePage({required this.character});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image.asset(CustomImages.rick),
            Center(
              child: CircleAvatar(
                foregroundImage: AssetImage(CustomImages.rick),
              ),
            ),
          ],
        ),
        Description(
          character: character,
        ),
        Divider(),
        Episodes(
          episodes: character.episodes,
        ),
      ],
    );
  }
}
