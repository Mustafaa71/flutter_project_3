import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Constants {
  /// AppbarSection() is a custom widget.
  static const kAppbarColor = Color(0xFFEC0029);
  static const kAppbarHeihgt = 175.0;
  static const kAppbarIconsColor = Colors.white;
  static const kAppbarIconsSize = 35.0;

  /// RestaurantWidget() is a custom widget.
  static const kRestaurantWidgetImageWidth = 80.0;
  static const kRestaurantWidgetImageHeight = 100.0;

  /// RestaurantHeader() is a custom widget.
  static const kRestaurantHeaderHeight = 130.0;

  /// Drawer Some How.
  static const kDrawerHeight = 500.0;

  static final kWelcomTextStyles = GoogleFonts.abel(
    textStyle: const TextStyle(
      color: Constants.kAppbarColor,
      fontSize: 25.0,
      fontWeight: FontWeight.bold,
    ),
  );

  static final kContentTextStyles = GoogleFonts.abel(
    textStyle: const TextStyle(
      color: kAppbarColor,
      fontSize: 25.0,
    ),
  );

  static const kDividerStyle = Padding(
    padding: EdgeInsets.only(top: 8.0, right: 180.0),
    child: Divider(
      color: Constants.kAppbarColor,
    ),
  );

  /// CheckBoxWidget() is a custom widget.
  static final kCheckBoxTextStyle = GoogleFonts.alata(
    textStyle: const TextStyle(
      color: Colors.black,
      fontSize: 20.0,
    ),
  );

  /// MenuWidget() is a custom widget.
  static const kMenuWidgetSizedBoxWidth = 300.0;
  static const kMenuWidgetSizedBoxHeight = 500.0;
  static const kMenuWidgetImageHeight = 70.0;
}
