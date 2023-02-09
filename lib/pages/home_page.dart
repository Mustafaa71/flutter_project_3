import 'package:flutter/material.dart';
import 'package:flutter_project_3/componants/home_componants/appbar_section.dart';
import 'package:flutter_project_3/componants/home_componants/restaurant_widget.dart';
import 'package:flutter_project_3/componants/home_componants/search_section.dart';
import 'package:flutter_project_3/model/Restaurant.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer-using-list-view
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const AppbarSection(),
            const SearchSection(),
            const Divider(thickness: 0.5, color: Colors.grey),
            for (var restaurants in Restaurant.restaurantInfo) ...[
              RestaurantWidget(restaurant: restaurants),
              const Divider(
                thickness: 3.5,
                color: Color(
                  0xFFeceaed,
                ),
              ),
            ],
          ],
        ),
      ),

      backgroundColor: Colors.white,
    );
  }
}
