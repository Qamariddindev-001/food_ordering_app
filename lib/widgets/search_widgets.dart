import 'package:flutter/material.dart';

class SearchWidgets extends StatefulWidget {
  const SearchWidgets({super.key});

  @override
  State<SearchWidgets> createState() => _SearchWidgetsState();
}

class _SearchWidgetsState extends State<SearchWidgets> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      height: 45,
      width: 350,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: const Color.fromARGB(255, 218, 217, 217)),
      child: const TextField(
          decoration: InputDecoration(
        contentPadding: EdgeInsets.all(0),
        icon: Padding(padding: EdgeInsets.only(left: 13), child: Icon(Icons.search, color: Colors.black, size: 25)),
        border: InputBorder.none,
        hintText: 'Search',
        helperStyle: TextStyle(color: Colors.grey, fontSize: 40, fontWeight: FontWeight.w700),
      )),
    );
  }
}
