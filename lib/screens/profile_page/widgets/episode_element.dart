import 'package:flutter/material.dart';
import 'package:rick_and_morty/data/episode.dart';
import 'package:rick_and_morty/resources/icons.dart';

class EpisodeElement extends StatelessWidget {
  final Episode episode;

  EpisodeElement({required this.episode});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(episode.image),
        Column(children: [
          Text('Серия ${episode.number}'),
          Text(episode.name),
          Text(episode.date),
        ]),
        Spacer(),
        CustomIcons.rightArrow
      ],
    );
  }
}
