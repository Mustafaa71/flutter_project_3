import 'package:flutter/material.dart';
import 'package:flutter_project_3/constants.dart';
import 'package:flutter_project_3/pages/registration_pages/sign_in_page.dart';

class DrawerSheet extends StatelessWidget {
  const DrawerSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: Constants.kDrawerHeight,
      child: Column(
        children: [
          const SizedBox(height: 20.0),
          Text(
            'Welcome to Jahez',
            style: Constants.kWelcomTextStyles,
          ),
          const SizedBox(height: 20.0),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignInPage()));
                    },
                    child: Text(
                      'Sign in',
                      style: Constants.kContentTextStyles,
                    ),
                  ),
                  Constants.kDividerStyle,
                  Text(
                    'Contact Us',
                    style: Constants.kContentTextStyles,
                  ),
                  Constants.kDividerStyle,
                  Text(
                    'About Jahez',
                    style: Constants.kContentTextStyles,
                  ),
                  Constants.kDividerStyle,
                  Text(
                    'Privacy Policy',
                    style: Constants.kContentTextStyles,
                  ),
                  Constants.kDividerStyle,
                ],
              ),
            ),
          ),
          const SizedBox(height: 40.0),
          Image.asset('images/jahez.jpg'),
        ],
      ),
    );
  }
}
