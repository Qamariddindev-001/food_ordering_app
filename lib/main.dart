import 'package:flutter/material.dart';
import 'package:food_ordering_app/pages/add_to_cart.dart';
import 'package:food_ordering_app/pages/checkout.dart';
import 'package:food_ordering_app/pages/get_started.dart';
import 'package:food_ordering_app/pages/home_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'get_started',
    routes: {
      'get_started': (context) {
        return const GetStarted();
      },
      'home_page': (context) {
        return const HomePage();
      },
      'add_to_cart': (context) {
        return const AddToCart();
      },
      'checkout': (context) {
        return const Checkout();
      }
    },
  ));
}
