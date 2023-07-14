import 'package:flutter/material.dart';

class DeleteFood extends StatelessWidget {
  const DeleteFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: ListView.builder(
          itemBuilder: (context, index) {
          return Row(
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.amber,
                child: Image.asset(''),
              ),
              Column()
            ],
          );
        }))
      ],
    );
  }
}
