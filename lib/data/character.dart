import 'package:rick_and_morty/data/episode.dart';
import 'package:rick_and_morty/data/place.dart';

class Character {
  final String image;
  final String status;
  final String name;
  final String race;
  final String sex;
  final String description;
  final Place bornPlace;
  final Place currentPlace;
  final List<Episode> episodes;

  Character({
    required this.bornPlace,
    required this.currentPlace,
    required this.image,
    required this.status,
    required this.name,
    required this.race,
    required this.sex,
    required this.description,
    required this.episodes,
  });
}
