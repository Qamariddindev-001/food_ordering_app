import 'package:flutter/material.dart';
import 'package:food_ordering_app/modul/map.dart';

class PopularWidgets extends StatefulWidget {
  const PopularWidgets({super.key});

  @override
  State<PopularWidgets> createState() => _PopularWidgetsState();
}

class _PopularWidgetsState extends State<PopularWidgets> {
  Widget getPopilar(String imag, String txt, String txt2) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      height: 170,
      width: 170,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color.fromRGBO(231, 227, 227, 1)),
      child: InkWell(
          onTap: () {
            setState(() {
              img['image'] = imag;
            });
            Navigator.pushNamed(context, 'add_to_cart');
          },
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Image.asset(imag, height: 104, width: 115),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17),
              child: Text(txt, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black)),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 0, left: 15, right: 0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Text(txt2, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color.fromRGBO(184, 156, 58, 1))),
                  const SizedBox(width: 40),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.add_circle, size: 20, color: Colors.green)),
                ])),
          ])),
    );
  }

  int currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(scrollDirection: Axis.horizontal, children: [
      Row(children: [
        getPopilar('images/burger.png', 'Beef Burger', ' \$20'),
        getPopilar('images/pizza.png', 'Cheese Pizza', '\$35'),
        getPopilar('images/dessert.png', 'Dessert', '\$35'),
        getPopilar('images/free.png', 'Free', '\$35'),
        getPopilar('images/imeg.png', 'Pizza', '\$35'),
      ])
    ]));
  }
}
