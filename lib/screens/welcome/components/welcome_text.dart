import 'package:flutter/material.dart';
import 'package:travel_ui_app/constants.dart';
import 'package:travel_ui_app/responsive.dart';
import 'package:travel_ui_app/screens/home/home.dart';

import 'welcome_button.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(38),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome\n' + 'to Patagonia',
            style: TextStyle(
              fontSize: isTab(context) ? 45 : 36,
              fontWeight: FontWeight.bold,
              color: kTextColor,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'On South America’s southern frontier, nature grows wild, barren and beautiful. Spaces are large, as are the silences that fill them. Patagonia offers a wealth of potential experiences and landscapes.',
            style: TextStyle(
              fontSize: isTab(context) ? 24 : 16,
              color: kTextColor,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          WelcomeButton(
            tapEvent: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const HomeScreen()));
            },
          )
        ],
      ),
    );
  }
}
