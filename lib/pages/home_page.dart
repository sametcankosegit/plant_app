import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/pages/shoping_cart_page.dart';

import '../components/bottom_navbar.dart';
import '../components/plant_box_items.dart';
import '../components/plants.dart';
import 'account_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List plantType = [
    ['All', true],
    ['Outdoor', false],
    ['Indoor', false],
    ['Big plant', false],
    ['Little plant', false],
  ];
  void plantTypeSelected(int index) {
    setState(() {
      for (int i = 0; i < plantType.length; i++) {
        plantType[i][1] = false;
      }
      plantType[index][1] = true;
    });
  }

  int _currentIndex = 0;
  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 217, 224, 230),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Plants',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
          ],
        ),
        actions: <Widget>[
          Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: const Offset(0, 2),
                    blurRadius: 3,
                    spreadRadius: 3,
                  )
                ],
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    width: 0.4,
                    color: const Color.fromARGB(255, 227, 232, 235))),
            child: IconButton(
              icon: const Icon(Icons.shopping_cart),
              tooltip: 'Open shopping cart',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ShopingCart()));
              },
            ),
          ),
        ],
        leading: IconButton(
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
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: const Color(0xff1d1617).withOpacity(0.11),
                  blurRadius: 40,
                  spreadRadius: 0.0)
            ]),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(96, 255, 255, 255),
                  hintText: 'Arama Yap',
                  hintStyle: const TextStyle(
                      color: Color.fromARGB(255, 170, 166, 166), fontSize: 14),
                  contentPadding: const EdgeInsets.all(15),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12),
                    child: SvgPicture.asset(
                      'assets/icons/Search.svg',
                      color: Colors.green,
                    ),
                  ),
                  suffixIcon: Container(
                    width: 100,
                    child: IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const VerticalDivider(
                            color: Colors.black,
                            indent: 10,
                            endIndent: 10,
                            thickness: 0.1,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset('assets/icons/Filter.svg'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none)),
            ),
          ),
          const SizedBox(height: 40),
          Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: plantType.length,
              itemBuilder: (context, index) {
                return PlantType(
                    plantType: plantType[index][0],
                    isSelected: plantType[index][1],
                    onTap: () {
                      plantTypeSelected(index);
                    });
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const PlantBoxItems(),
        ],
      ),
      bottomNavigationBar: MyBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
      ),
    );
  }
}
