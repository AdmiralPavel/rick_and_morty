import 'package:rick_and_morty/data/character.dart';
import 'package:rick_and_morty/data/episode.dart';
import 'package:rick_and_morty/data/place.dart';
import 'package:rick_and_morty/resources/images.dart';

class Variables {
  static final characters = [
    Character(
        image: CustomImages.rick,
        name: 'Рик Санчез',
        status: "ЖИВОЙ",
        race: 'Человек',
        sex: 'Мужской',
        currentPlace: Place(name: "Земля (Измерение подмены)"),
        description:
            'Главный протагонист мультсериала «Рик и Морти». Безумный ученый, чей алкоголизм, безрассудности социопатия заставляют беспокоиться семью его дочери.',
        bornPlace: Place(
          name: 'Земля C-137',
        ),
        episodes: <Episode>[]),
    Character(
        image: CustomImages.agencyDirector,
        name: 'Директор Агентства',
        status: "ЖИВОЙ",
        sex: 'Мужской',
        race: 'Человек',
        currentPlace: Place(name: "Земля (Измерение подмены)"),
        description:
            'Главный протагонист мультсериала «Рик и Морти». Безумный ученый, чей алкоголизм, безрассудности социопатия заставляют беспокоиться семью его дочери.',
        bornPlace: Place(
          name: 'Земля C-137',
        ),
        episodes: <Episode>[]),
    Character(
        image: CustomImages.morty,
        name: 'Морти Смит',
        status: "ЖИВОЙ",
        sex: 'Мужской',
        race: 'Человек',
        currentPlace: Place(name: "Земля (Измерение подмены)"),
        description:
            'Главный протагонист мультсериала «Рик и Морти». Безумный ученый, чей алкоголизм, безрассудности социопатия заставляют беспокоиться семью его дочери.',
        bornPlace: Place(
          name: 'Земля C-137',
        ),
        episodes: <Episode>[]),
    Character(
        image: CustomImages.summer,
        name: 'Саммер Смит',
        status: "ЖИВОЙ",
        sex: 'Женский',
        race: 'Человек',
        currentPlace: Place(name: "Земля (Измерение подмены)"),
        description:
            'Главный протагонист мультсериала «Рик и Морти». Безумный ученый, чей алкоголизм, безрассудности социопатия заставляют беспокоиться семью его дочери.',
        bornPlace: Place(
          name: 'Земля C-137',
        ),
        episodes: <Episode>[]),
    Character(
        image: CustomImages.einstein,
        name: 'Альберт Эйнштейн',
        status: "МЕРТВЫЙ",
        sex: 'Мужской',
        race: 'Человек',
        currentPlace: Place(name: "Земля (Измерение подмены)"),
        description:
            'Главный протагонист мультсериала «Рик и Морти». Безумный ученый, чей алкоголизм, безрассудности социопатия заставляют беспокоиться семью его дочери.',
        bornPlace: Place(
          name: 'Земля C-137',
        ),
        episodes: <Episode>[]),
    Character(
        image: CustomImages.alan,
        name: 'Алан Райс',
        status: "МЕРТВЫЙ",
        sex: 'Мужской',
        race: 'Человек',
        currentPlace: Place(name: "Земля (Измерение подмены)"),
        description:
            'Главный протагонист мультсериала «Рик и Морти». Безумный ученый, чей алкоголизм, безрассудности социопатия заставляют беспокоиться семью его дочери.',
        bornPlace: Place(
          name: 'Земля C-137',
        ),
        episodes: <Episode>[]),
  ];
}
