import 'package:flutter/material.dart';
import 'package:food_ordering_app/modul/map.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({super.key});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  Widget addOnes(String imag) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 32),
      child: Expanded(
        child: Stack(
          children: [
            Container(
              width: 85,
              height: 85,
              decoration: BoxDecoration(color: const Color(0xFFE7E3E3), borderRadius: BorderRadius.circular(13)),
              child: Image.asset(imag, height: 51, width: 78),
            ),
            Positioned(
              left: 60,
              top: 57,
              child: Container(height: 22, width: 22, child: IconButton(onPressed: () {}, icon: const Icon(Icons.add_circle, color: Colors.green))),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(95, 35, 222, 1),
        appBar: AppBar(
            elevation: 0,
            backgroundColor: const Color.fromRGBO(95, 35, 222, 1),
            leading: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'home_page');
              },
              icon: const Icon(Icons.arrow_back, size: 30, color: Colors.white),
            )),
        body: Column(children: [
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            height: 224,
            child: Image.asset(img['image'], height: 220, fit: BoxFit.fill),
          ),
          Container(
            height: 459,
            width: 428,
            decoration: const BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(60)), color: Colors.white),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(children: [
                Container(
                    margin: const EdgeInsets.only(top: 36, left: 32),
                    height: 44,
                    width: 91,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(24), color: const Color.fromRGBO(95, 35, 222, 1)),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(children: [
                        Icon(Icons.star, color: Color.fromRGBO(243, 156, 18, 1)),
                        Text('4.5', style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600, color: Colors.white)),
                      ]),
                    )),
                const Padding(padding: EdgeInsets.only(left: 195, top: 45), child: Text('\$20', style: TextStyle(color: Color(0xFFB89C3A), fontSize: 23, fontWeight: FontWeight.w600)))
              ]),
              Padding(
                padding: const EdgeInsets.only(top: 22, left: 32),
                child: Row(children: [
                  const Text('Beef Burger', textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w600)),
                  const SizedBox(width: 110),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.add_circle, color: Color(0xFF5716E1))),
                  const Text('1', style: TextStyle(color: Color(0xFF5716E1), fontSize: 17, fontWeight: FontWeight.w500)),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.remove_circle, color: Color(0xFF5716E1))),
                ]),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 32, top: 12),
                child: Text(
                  'Big Juicy Beef Burger with cheese,lettuce\ntomato,onions and special sauce',
                  style: TextStyle(color: Color(0xFF949494), fontSize: 17, fontWeight: FontWeight.w500),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 25, left: 32),
                child: Text(
                  'Add Ones',
                  style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              Row(children: [addOnes('images/pishloq.png'), addOnes('images/tomat.png'), addOnes('images/atala.png')]),
              Padding(
                padding: const EdgeInsets.only(left: 32, top: 35),
                child: Container(
                  height: 50,
                  width: 330,
                  decoration: BoxDecoration(color: const Color(0xFF5F23DE), borderRadius: BorderRadius.circular(30)),
                  child: TextButton(
                      onPressed: () {
                        imageUrl.add(img['image']);
                        last.add(1);
                        Navigator.pushNamed(context, 'checkout');
                      },
                      child: const Text('Add to cart', style: TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.w500))),
                ),
              )
            ]),
          ),
        ]),
      ),
    );
  }
}
