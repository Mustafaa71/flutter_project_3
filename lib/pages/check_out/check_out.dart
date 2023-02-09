import 'package:flutter/material.dart';
import 'package:flutter_project_3/constants.dart';
import 'package:flutter_project_3/pages/check_out/check_out_content.dart';
import 'package:flutter_project_3/pages/google_map/map_page.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CheckOut',
          style: Constants.kContentTextStyles,
        ),
        elevation: 0.0,
        backgroundColor: const Color(0xFFecebf2),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            color: Colors.white,
            child: Row(
              children: [
                Text(
                  'Items(1)',
                  style: Constants.kCheckBoxTextStyle,
                ),
                const Spacer(),
                Text(
                  'view',
                  style: Constants.kCheckBoxTextStyle,
                ),
                const Icon(
                  Icons.keyboard_arrow_down_sharp,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '    Delivery To',
              style: Constants.kCheckBoxTextStyle,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const CheckOutContent(
            icon: Icons.location_on,
            text1: 'Home',
            text2: 'Al Khobar, Saudi Arabia',
          ),
          const SizedBox(
            height: 8.0,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '    Payment Method',
              style: Constants.kCheckBoxTextStyle,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          const CheckOutContent(
            icon: Icons.credit_card,
            text1: 'Credit Card',
            text2: '**** **** **** 1234',
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5), offset: const Offset(0, 3), blurRadius: 7, spreadRadius: 5),
              ],
            ),
            margin: const EdgeInsets.all(20.0),
            clipBehavior: Clip.hardEdge,
            child: Row(
              children: [
                Image.asset('images/boga/boga-meal1.png', height: 70.0, fit: BoxFit.cover),
                const SizedBox(width: 10.0),
                Text('Boga Meal', style: Constants.kContentTextStyles),
                const Spacer(),
                const Text('SAR 55'),
              ],
            ),
          ),
          const SizedBox(
            height: 90.0,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const MapPage()));
            },
            child: Container(
              padding: const EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                color: Constants.kAppbarColor,
                borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    offset: const Offset(0, 3),
                    blurRadius: 7,
                    spreadRadius: 5,
                  ),
                ],
              ),
              width: double.infinity,
              margin: const EdgeInsets.all(20.0),
              clipBehavior: Clip.hardEdge,
              child: Text(
                'Buy Now',
                style: Constants.kCheckBoxTextStyle,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xFFecebf2),
    );
  }
}
