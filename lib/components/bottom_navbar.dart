import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const MyBottomNavigationBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: onTap,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 222, 227, 230),
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 222, 227, 230),
              icon: Icon(Icons.forest),
              label: 'Plants',
            ),
            BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 222, 227, 230),
              icon: Icon(Icons.favorite),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 222, 230, 226),
              icon: Icon(Icons.phone),
              label: 'Helplines',
            ),
          ],
          selectedItemColor: Colors.green,
          unselectedItemColor: Color.fromARGB(255, 145, 143, 143),
        ),
      ),
    );
  }
}
