import 'package:flutter/material.dart';
import 'package:plant_app/components/types_filter.dart';

class PlantBoxItems extends StatelessWidget {
  const PlantBoxItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(scrollDirection: Axis.horizontal, children: [
        Plants(
          plantImage:
              Image.asset('assets/images/indoorPlant2.png', height: 170),
          plantName: 'Kapalka Kulpa',
          plantPrice: '20€',
          plantType: 'Indoor',
        ),
        Plants(
          plantName: 'Papatya',
          plantType: 'Outdoor',
          plantPrice: '1€',
          plantImage:
              Image.asset('assets/images/outdoorPlant1.png', height: 170),
        ),
        Plants(
          plantName: 'Flowerpot Tree',
          plantType: 'Indoor',
          plantPrice: '25€',
          plantImage:
              Image.asset('assets/images/indoorPlant1.png', height: 170),
        ),
        Plants(
          plantName: 'Red leafed potted',
          plantType: 'Outdoor',
          plantPrice: '30€',
          plantImage:
              Image.asset('assets/images/outdoorPlant2.png', height: 170),
        ),
        Plants(
          plantName: 'Succulent plant',
          plantType: 'Indoor',
          plantPrice: '15€',
          plantImage:
              Image.asset('assets/images/indoorPlant3.png', height: 170),
        ),
      ]),
    );
  }
}
