import 'package:flutter/material.dart';
import 'package:flutter_project_3/constants.dart';
import 'package:flutter_project_3/model/Restaurant.dart';

class RestaurantHeader extends StatelessWidget {
  final Restaurant restaurantImage;
  const RestaurantHeader({
    super.key,
    required this.restaurantImage,
  });

  @override
  Widget build(BuildContext context) {
    int index = Restaurant.restaurantInfo.indexOf(restaurantImage);
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10.0),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(
                10.0,
              ),
            ),
          ),
          width: double.infinity,
          height: Constants.kRestaurantHeaderHeight,
          child: Row(
            children: [
              Image.asset(
                Restaurant.restaurantInfo[index].resImage,
              ),
              const SizedBox(width: 12.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 13.0),
                  Row(
                    children: [
                      Text(
                        Restaurant.restaurantInfo[index].resName,
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 40.0),
                      const Icon(Icons.stars, color: Colors.yellow),
                      const Icon(Icons.stars, color: Colors.yellow),
                      const Icon(Icons.stars, color: Colors.yellow),
                    ],
                  ),
                  const SizedBox(height: 12.0),
                  Row(
                    children: const [
                      Text(
                        'Fast Food',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      SizedBox(width: 140.0),
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.grey,
                      ),
                      Text('1.2'),
                    ],
                  ),
                  const SizedBox(height: 12.0),
                  Row(
                    children: const [
                      Text(
                        'Open',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 80.0),
                      Text(' 10:00 AM - 1:30 PM'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 8.0),
        const TextField(
          decoration: InputDecoration(
            hintText: 'What are you looking for?',
            suffixIcon: Icon(Icons.search),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  10.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
