import 'package:flutter/material.dart';

class PlantTapInfo extends StatelessWidget {
  const PlantTapInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 188, 223, 189),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Column(children: [
        Center(
          child: Text(
            'My Cart',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        )
      ]),
    );
  }
}
