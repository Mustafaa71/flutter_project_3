import 'package:flutter/material.dart';

class ProfileSetting extends StatelessWidget {
  final String label;
  final IconData icon;
  final Function()? onTap;

  const ProfileSetting({
    super.key,
    required this.label,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border.fromBorderSide(
          BorderSide(color: Colors.grey),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: Colors.orange,
              ),
              const SizedBox(width: 8.0),
              Text(label, style: const TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold)),
            ],
          ),
          const Icon(Icons.arrow_forward_ios, color: Colors.orange),
        ],
      ),
    );
  }
}
