import 'package:flutter/material.dart';
import 'package:food_ordering_app/widgets/delete_food.dart';
import 'package:food_ordering_app/widgets/navigator_bar_wigets.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: const NavigatorBarWidgets(),
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: const Text('2 items in cart', style: TextStyle(color: Colors.black, fontSize: 26, fontWeight: FontWeight.w500)),
          ),
          body: Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const Text(
                  'Other Instruction',
                  style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.only(right: 30),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)), borderSide: BorderSide(width: 100)),
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                const Row(children: [
                  Text('Total', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.w600)),
                  SizedBox(width: 213),
                  Text('\$38', style: TextStyle(color: Color(0xFFB89C3A), fontSize: 25, fontWeight: FontWeight.w600)),
                ]),
                const SizedBox(height: 20),
                Container(
                  height: 59,
                  width: 328,
                  decoration: BoxDecoration(color: const Color(0xFF5F23DE), borderRadius: BorderRadius.circular(30)),
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'checkout');
                      },
                      child: const Text('Checkout', style: TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.w500))),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 115, top: 15),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'get_started');
                      },
                      child: const Text(
                        'Back to menu',
                        style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ))
              ]))),
    );
  }
}
