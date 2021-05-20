import 'package:flutter/material.dart';
import 'package:rick_and_morty/data/episode.dart';

import 'episode_element.dart';

class Episodes extends StatelessWidget {
  final List<Episode> episodes;

  Episodes({required this.episodes});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Эпизоды',
            ),
            Spacer(),
            TextButton(
              onPressed: () {},
              child: Text('Все эпизоды'),
            ),
          ],
        ),
        ListView.builder(
          itemBuilder: (context, index) {
            return EpisodeElement(
              episode: episodes[index],
            );
          },
        ),
      ],
    );
  }
}
