import 'package:flutter/material.dart';

class PlantType extends StatelessWidget {
  final String plantType;
  final bool isSelected;
  final VoidCallback onTap;

  const PlantType(
      {super.key,
      required this.plantType,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Text(
          plantType,
          style: TextStyle(
              color: isSelected ? Colors.green : Colors.grey,
              fontSize: 17,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
