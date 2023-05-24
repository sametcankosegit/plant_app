import 'package:flutter/material.dart';
import 'package:plant_app/pages/plant_info/plant_tap_info.dart';

class Plants extends StatelessWidget {
  final String plantType;
  final String plantName;
  final String plantPrice;
  final Image plantImage;

  Plants(
      {required this.plantName,
      required this.plantType,
      required this.plantPrice,
      required this.plantImage});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 25, bottom: 120),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PlantTapInfo(),
              ),
            );
          },
          child: Container(
            padding: const EdgeInsets.all(12),
            width: 200,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  )
                ],
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromARGB(255, 200, 210, 214)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Plant Image
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: plantImage),
                ),
                //Plant Info

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        plantType,
                        style: const TextStyle(color: Colors.grey),
                      ),
                      Text(
                        plantName,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            plantPrice,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    offset: const Offset(0, 2),
                                    blurRadius: 2,
                                    spreadRadius: 3,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                    width: 0.4,
                                    color: const Color.fromARGB(
                                        255, 227, 232, 235))),
                            child: IconButton(
                              icon: const Icon(Icons.shopping_cart),
                              tooltip: 'Open shopping cart',
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
