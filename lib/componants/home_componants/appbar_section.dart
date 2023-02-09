import 'package:flutter/material.dart';
import 'package:flutter_project_3/componants/home_componants/drawer_sheet.dart';
import 'package:flutter_project_3/constants.dart';

class AppbarSection extends StatelessWidget {
  const AppbarSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constants.kAppbarColor,
      width: double.infinity,
      height: Constants.kAppbarHeihgt,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          top: 30.0,
          right: 20.0,
        ),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => const DrawerSheet(),
                );
              },
              child: const Icon(
                Icons.menu,
                size: Constants.kAppbarIconsSize,
                color: Constants.kAppbarIconsColor,
              ),
            ),
            const SizedBox(
              width: 28.0,
            ),
            const Icon(
              Icons.search,
              size: Constants.kAppbarIconsSize,
              color: Constants.kAppbarIconsColor,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 23.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Image(
                    image: NetworkImage('https://jahezgroup.com/wp-content/uploads/2021/12/Argaam-1.png'),
                    height: 50.0,
                  ),
                  SizedBox(height: 8.0),
                  Icon(
                    Icons.keyboard_double_arrow_down_outlined,
                    color: Constants.kAppbarIconsColor,
                  ),
                ],
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.location_on_outlined,
              size: Constants.kAppbarIconsSize,
              color: Constants.kAppbarIconsColor,
            ),
            const SizedBox(
              width: 28.0,
            ),
            const Icon(
              Icons.filter_alt_outlined,
              size: Constants.kAppbarIconsSize,
              color: Constants.kAppbarIconsColor,
            ),
          ],
        ),
      ),
    );
  }
}
