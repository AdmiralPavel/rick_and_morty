import 'package:rick_and_morty/data/character.dart';
import 'package:rick_and_morty/resources/images.dart';

class Variables {
  static final characters = [
    Character(
      image: CustomImages.rick,
      name: 'Рик Санчез',
      status: "ЖИВОЙ",
      description: "Человек, Мужской",
    ),
    Character(
      image: CustomImages.agencyDirector,
      name: 'Директор Агентства',
      status: "ЖИВОЙ",
      description: "Человек, Мужской",
    ),
    Character(
      image: CustomImages.morty,
      name: 'Морти Смит',
      status: "ЖИВОЙ",
      description: "Человек, Мужской",
    ),
    Character(
      image: CustomImages.summer,
      name: 'Саммер Смит',
      status: "ЖИВОЙ",
      description: "Человек, Женский",
    ),
    Character(
      image: CustomImages.einstein,
      name: 'Альберт Эйнштейн',
      status: "МЕРТВЫЙ",
      description: "Человек, Мужской",
    ),
    Character(
      image: CustomImages.alan,
      name: 'Алан Райс',
      status: "МЕРТВЫЙ",
      description: "Человек, Мужской",
    ),
  ];
}
