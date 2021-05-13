import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/resources/colors.dart';
import 'package:rick_and_morty/resources/icons.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: Container(
        height: 48,
        color: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            color: CustomColors.gray6,
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 12.0,
              horizontal: 19,
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Найти персонажа',
                      icon: CustomIcons.search,
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,contentPadding:
                    EdgeInsets.only(bottom: 12),
                    ),
                  ),
                ),
                VerticalDivider(thickness: 1),
                SizedBox(
                  width: 14,
                ),
                CustomIcons.filter,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
