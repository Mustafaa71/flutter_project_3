import 'package:flutter/material.dart';
import 'package:flutter_project_3/constants.dart';

class CheckOutContent extends StatelessWidget {
  final IconData icon;
  final String text1;
  final String text2;
  const CheckOutContent({
    super.key,
    required this.icon,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
      decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(20.0))),
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(children: [
        Icon(icon),
        const SizedBox(width: 10.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text1),
            Text(text2),
          ],
        ),
        const Spacer(),
        Text('view', style: Constants.kCheckBoxTextStyle),
        const Icon(
          Icons.keyboard_arrow_down_sharp,
        ),
      ]),
    );
  }
}
