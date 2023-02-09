import 'package:flutter/material.dart';
import 'package:flutter_project_3/componants/restaurant_components/menu_widget.dart';
import 'package:flutter_project_3/constants.dart';
import 'package:flutter_project_3/model/Restaurant.dart';

class RestaurantWidget extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantWidget({
    super.key,
    required this.restaurant,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MenuWidget(
              restaurantMeal: restaurant,
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Image.asset(
              restaurant.resImage,
              width: Constants.kRestaurantWidgetImageWidth,
              height: Constants.kRestaurantWidgetImageHeight,
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      restaurant.resName,
                      style: const TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    const SizedBox(width: 130.0),
                    const Icon(Icons.location_on_outlined),
                    const Text('0.7KM'),
                  ],
                ),
                const SizedBox(height: 16.0),
                Text(
                  restaurant.resAddress,
                  style: const TextStyle(fontSize: 15.0),
                ),
                const SizedBox(height: 16.0),
                Row(
                  children: const [
                    Text(
                      'Open',
                      style: TextStyle(color: Colors.green, fontSize: 20.0),
                    ),
                    SizedBox(width: 80.0),
                    Text('10:00 AM - 1:30 AM'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
