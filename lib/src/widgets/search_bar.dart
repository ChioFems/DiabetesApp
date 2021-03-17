import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final String searchText;
  const SearchBar({
    Key key,
    this.searchText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(29.5),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: searchText,
          icon: Container(
            alignment: Alignment.centerLeft,
            height: 40,
            width: 40,
            child: Image.asset(
              "assets/icons/search.png",
            ),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
