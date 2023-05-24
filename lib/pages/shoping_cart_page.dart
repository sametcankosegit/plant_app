import 'package:flutter/material.dart';
import 'account_page.dart';

class ShopingCart extends StatefulWidget {
  const ShopingCart({super.key});

  @override
  State<ShopingCart> createState() => _ShopingCartState();
}

class _ShopingCartState extends State<ShopingCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 182, 218, 184),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 223, 241, 235),
        actions: <Widget>[
          IconButton(
            iconSize: 30,
            icon: const Icon(Icons.account_circle_outlined),
            color: const Color.fromARGB(255, 16, 33, 48),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AccountPage()),
              );
            },
          ),
        ],
        title: Text('My Cart'),
      ),
      body: Column(
        children: [
          Divider(
            height: 20,
          ),
          Container()
        ],
      ),
    );
  }
}
