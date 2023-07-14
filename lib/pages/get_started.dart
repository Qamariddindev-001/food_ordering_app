import 'package:flutter/material.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 428,
        height: 926,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          gradient: const LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFF5716E1), Color(0x8E5E21E0)],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Stack(children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 98, left: 42),
                height: 300,
                width: 300,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(200), color: const Color(0xFFD9D9D9)),
                child: Image.asset('images/imeg.png', height: 234, width: 243),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 90, left: 40),
                child: SizedBox(
                  width: 299,
                  height: 128,
                  child: Text(
                    'Enjoy Your Food',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 42, fontFamily: 'Poppins', fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 50),
                child: ElevatedButton(
                    style: ButtonStyle(
                      minimumSize: const MaterialStatePropertyAll(Size(0, 60)),
                      backgroundColor: const MaterialStatePropertyAll(Color(0xFFD9D9D9)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(35))),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'home_page');
                    },
                    child: const Text(
                      'Get Started',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600, color: Color(0xFF5519D5)),
                    )),
              )
            ],
          )
        ]),
      ),
    );
  }
}
