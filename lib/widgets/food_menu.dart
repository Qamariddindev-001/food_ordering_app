import 'package:flutter/material.dart';
import 'package:food_ordering_app/modul/map.dart';

class FoodMenu extends StatefulWidget {
  const FoodMenu({super.key});

  @override
  State<FoodMenu> createState() => _FoodMenuState();
}

class _FoodMenuState extends State<FoodMenu> {
  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        margin: const EdgeInsets.only(left: 20),
        height: 170,
        width: 360,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color(0xFF8059CB)),
        child: const Row(children: [
          Padding(
              padding: EdgeInsets.only(top: 25, left: 20),
              child: Row(children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text('Todays Offer', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400, color: Colors.white)),
                  SizedBox(height: 17),
                  Text('Free Plate Of Fries', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 19)),
                  SizedBox(height: 17),
                  Text('on all ordres above \$150', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 16)),
                ])
              ]))
        ]),
      ),
      Positioned(
        right: 0,
        top: -40,
        child: Image.asset(img['photo'], height: 140, fit: BoxFit.fill),
      ),
    ]);
  }
}
