import 'package:flutter/material.dart';
import 'package:flutter_project_3/constants.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'What are you looking...',
                hintStyle: TextStyle(color: Colors.grey),
                contentPadding: EdgeInsets.all(20.0),
                suffixIcon: Icon(Icons.cancel),
                filled: true,
                fillColor: Color(0xFFF3F4F4),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(18.0),
            decoration: const BoxDecoration(
              color: Constants.kAppbarColor,
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            margin: const EdgeInsets.only(left: 10.0),
            child: const Text(
              'Resturants',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(17.0),
            decoration: const BoxDecoration(
              color: Colors.grey,
              border: Border.fromBorderSide(
                BorderSide(color: Colors.red),
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            margin: const EdgeInsets.only(left: 10.0),
            child: const Text(
              'Items',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
