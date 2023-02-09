import 'package:flutter/material.dart';
import 'package:flutter_project_3/componants/restaurant_components/meal_widget.dart';
import 'package:flutter_project_3/componants/restaurant_components/restaurant_header.dart';
import 'package:flutter_project_3/constants.dart';
import 'package:flutter_project_3/model/Restaurant.dart';
import 'package:flutter_project_3/pages/check_out/check_out.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key, required this.restaurantMeal});
  final Restaurant restaurantMeal;

  @override
  Widget build(BuildContext context) {
    int index = Restaurant.restaurantInfo.indexOf(restaurantMeal);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: AppBar(
          title: const Text('Menu', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
          actions: [
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Column(
                      children: const [
                        Divider(thickness: 1.0),
                        Text('Items in Cart', style: TextStyle(color: Constants.kAppbarColor)),
                        Divider(thickness: 1.0),
                      ],
                    ),
                    content: SizedBox(
                      width: Constants.kMenuWidgetSizedBoxWidth,
                      height: Constants.kMenuWidgetSizedBoxHeight,
                      child: Column(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                            height: 100.0,
                            child: Row(children: [
                              Image.asset(
                                'images/boga/boga-meal1.png',
                                height: Constants.kMenuWidgetImageHeight,
                                fit: BoxFit.cover,
                              ),
                              const Spacer(),
                              const Text('Bogna salat  '),
                              const Text('55 SAR'),
                            ]),
                          ),
                        ],
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const CheckOut()),
                          );
                        },
                        child: const Text('CheckOut'),
                      ),
                    ],
                  ),
                );
              },
              child: const Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: Icon(Icons.shopping_cart_outlined, size: 35.0),
              ),
            ),
          ],
          backgroundColor: Constants.kAppbarColor,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(children: [
          RestaurantHeader(restaurantImage: restaurantMeal),
          const SizedBox(height: 10.0),
          for (var meals in Restaurant.restaurantInfo[index].menu) ...[
            MealWidget(restaurant: meals),
            const SizedBox(height: 10.0),
          ],
        ]),
      ),
      backgroundColor: const Color(0xFFecebf2),
    );
  }
}
