import 'package:flutter/material.dart';
import 'package:food_ordering_app/widgets/food_all.dart';
import 'package:food_ordering_app/widgets/food_menu.dart';
import 'package:food_ordering_app/widgets/navigator_bar_wigets.dart';
import 'package:food_ordering_app/widgets/popular_widgets.dart';
import 'package:food_ordering_app/widgets/search_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              const Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text('Menu', style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600)),
              ),
              Image.asset('images/Ellipse 2.png', height: 100)
            ]),
            const SearchWidgets(),
            const SizedBox(height: 15),
            const FoodAll(),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Promotions',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
              ),
            ),
            const SizedBox(height: 7),
            const FoodMenu(),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 15),
              child: Text(
                'Popular',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
              ),
            ),
            const PopularWidgets(),
          ],
        ),
        bottomNavigationBar: const NavigatorBarWidgets(),
      ),


      
    );
  }
}
