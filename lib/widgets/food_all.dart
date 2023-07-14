import 'package:flutter/material.dart';
import 'package:food_ordering_app/modul/map.dart';

class FoodAll extends StatefulWidget {
  const FoodAll({super.key});

  @override
  State<FoodAll> createState() => _FoodAllState();
}

class _FoodAllState extends State<FoodAll> {
  int i = 0;
  Widget getFoodAll(String rasm, String txt, int index) {
    return Column(children: [
      Container(
          margin: const EdgeInsets.only(bottom: 7),
          height: 80,
          width: 80,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: i == index ? const Color(0xFF652BDB) : const Color(0xFFDAD7D7)),
          child: InkWell(
            onTap: () {
              setState(() {
                i = index;
                img['photo'] = rasm;
              });
            },
            child: Image.asset(rasm),
          )),
      Text(txt, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: i == index ? const Color(0xFF652BDB) : const Color(0xFF858585)))
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(children: [
            getFoodAll('images/imeg.png', 'All', 0),
            const SizedBox(width: 10),
            getFoodAll('images/burger.png', 'Burger', 1),
            const SizedBox(width: 10),
            getFoodAll('images/pizza.png', 'Pizza', 2),
            const SizedBox(width: 10),
            getFoodAll('images/dessert.png', 'Dessert', 3),
          ])),
    );
  }
}
