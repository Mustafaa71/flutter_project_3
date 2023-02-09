import 'package:elegant_notification/elegant_notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_3/constants.dart';
import 'package:flutter_project_3/model/Restaurant.dart';

class MealWidget extends StatefulWidget {
  final RestaurantMenu restaurant;
  const MealWidget({
    super.key,
    required this.restaurant,
  });

  @override
  State<MealWidget> createState() => _MealWidgetState();
}

class _MealWidgetState extends State<MealWidget> {
  bool isChecked = false;
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => StatefulBuilder(
            builder: (context, setState) {
              return FractionallySizedBox(
                heightFactor: 0.9,
                child: Column(
                  children: [
                    Image.asset(widget.restaurant.mealImage),
                    Text(
                      widget.restaurant.mealDescription,
                      style: const TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, top: 50.0, right: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Drinks',
                            style: TextStyle(fontSize: 20.0),
                          ),
                          Text(
                            '* Required',
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20.0),
                      decoration: const BoxDecoration(
                        color: Color(0xFFeceaed),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      margin: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          CheckboxListTile(
                            value: isChecked,
                            onChanged: (newValue) {
                              setState(() {
                                isChecked = newValue ?? false;
                              });
                            },
                            title: Text('Pepsi', style: Constants.kCheckBoxTextStyle),
                          ),
                          CheckboxListTile(
                            value: isChecked,
                            onChanged: (newValue) {
                              setState(() {
                                isChecked = newValue ?? false;
                              });
                            },
                            title: Text('7 UP', style: Constants.kCheckBoxTextStyle),
                            selected: isChecked,
                          ),
                          CheckboxListTile(
                            value: isChecked,
                            onChanged: (newValue) {
                              setState(() {
                                isChecked = newValue ?? false;
                              });
                            },
                            title: Text('Mirinda', style: Constants.kCheckBoxTextStyle),
                          ),
                          CheckboxListTile(
                            value: isChecked,
                            onChanged: (newValue) {
                              setState(() {
                                isChecked = newValue ?? false;
                              });
                            },
                            title: Text('Diet Pepsi', style: Constants.kCheckBoxTextStyle),
                            selected: isChecked,
                          ),
                          CheckboxListTile(
                            value: isChecked,
                            onChanged: (newValue) {
                              setState(() {
                                isChecked = newValue ?? false;
                              });
                            },
                            title: Text('Mt. Dew', style: Constants.kCheckBoxTextStyle),
                            selected: isChecked,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(20.0),
                            decoration: const BoxDecoration(
                              color: Color(0xFFeceaed),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                            margin: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (counter != 0) {
                                        counter--;
                                      }
                                    });
                                  },
                                  icon: const Icon(Icons.remove),
                                ),
                                Text(
                                  counter.toString(),
                                  style: const TextStyle(fontSize: 20.0),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      counter++;
                                    });
                                  },
                                  icon: const Icon(Icons.add),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
                              decoration: const BoxDecoration(
                                color: Constants.kAppbarColor,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                              ),
                              margin: const EdgeInsets.only(right: 10.0),
                              child: InkWell(
                                onTap: () {
                                  ElegantNotification.success(
                                    title: const Text('Add successfully'),
                                    description: const Text('Go to your cart to checkout'),
                                    animationDuration: const Duration(seconds: 2),
                                  ).show(context);
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Add to cart',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                      ),
                                    ),
                                    Text(
                                      widget.restaurant.mealPrice,
                                      style: const TextStyle(
                                        fontSize: 15.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(
                20.0,
              ),
            ),
          ),
          clipBehavior: Clip.hardEdge,
          isScrollControlled: true,
        );
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(
              10.0,
            ),
          ),
        ),
        child: Column(
          children: [
            Image.asset(widget.restaurant.mealImage),
            const Divider(
              color: Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.restaurant.mealDescription,
                  style: const TextStyle(fontSize: 20.0),
                ),
                Text(
                  widget.restaurant.mealPrice,
                  style: const TextStyle(fontSize: 20.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
