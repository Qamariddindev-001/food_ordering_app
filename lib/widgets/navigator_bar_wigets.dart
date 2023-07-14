import 'package:flutter/material.dart';
import 'package:food_ordering_app/pages/checkout.dart';
import 'package:food_ordering_app/pages/home_page.dart';

class NavigatorBarWidgets extends StatefulWidget {
  const NavigatorBarWidgets({super.key});

  @override
  State<NavigatorBarWidgets> createState() => _NavigatorBarWidgetsState();
}

class _NavigatorBarWidgetsState extends State<NavigatorBarWidgets> {
  List last = [const HomePage(), Container(color: Colors.blue), const Checkout()];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        mouseCursor: MaterialStateMouseCursor.textable,
        // type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromRGBO(111, 60, 213, 1),
        unselectedItemColor: const Color.fromRGBO(193, 170, 243, 1),
        // fixedColor: Colors.black,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {});
          if (value > 0 && value < 2) {
            currentIndex = value;
          }

          Navigator.pushNamed(context, 'home_page');
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ]);
  }
}
