import 'package:flutter/material.dart';
import 'package:rick_and_morty/resources/colors.dart';

class CustomTextTheme {
  static final nameTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 16,

    fontWeight: FontWeight.w500,
  );
  static final descriptionTextStyle = TextStyle(
    color: CustomColors.additionalText,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
  static final aliveTextStyle = TextStyle(
    color: CustomColors.green,
    fontSize: 10,
    fontWeight: FontWeight.w500,
  );
  static final deadTextStyle = TextStyle(
    fontWeight: FontWeight.w500,
    color: CustomColors.red,
    fontSize: 10,
  );
  static final minorTextStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 10,
    color: CustomColors.minor,
  );
}
