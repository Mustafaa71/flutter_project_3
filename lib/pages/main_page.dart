import 'package:flutter/material.dart';
import 'package:flutter_project_3/pages/favorite_page.dart';
import 'package:flutter_project_3/pages/home_page.dart';
import 'package:flutter_project_3/pages/order_page.dart';
import 'package:flutter_project_3/pages/setting_pages/setting_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    const pages = [
      HomePage(),
      OrderPage(),
      FavoritePage(),
      SettingPage(),
    ];

    return Scaffold(
      /// Body
      body: pages[pageIndex],

      /// Bottom Navigation Bar
      bottomNavigationBar: NavigationBar(
        selectedIndex: pageIndex,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.bookmark_add_outlined), label: 'Orders'),
          NavigationDestination(icon: Icon(Icons.favorite_border), label: 'Favorites'),
          NavigationDestination(icon: Icon(Icons.more_horiz), label: 'More'),
        ],
        onDestinationSelected: (value) {
          setState(() {
            pageIndex = value;
          });
        },
        backgroundColor: Colors.white,
      ),
    );
  }
}
