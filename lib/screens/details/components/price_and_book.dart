import 'package:flutter/material.dart';
import 'package:travel_ui_app/components/common_button.dart';
import 'package:travel_ui_app/constants.dart';
import 'package:travel_ui_app/responsive.dart';

class PriceAndBook extends StatelessWidget {
  const PriceAndBook({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
            text: TextSpan(children: [
          TextSpan(
              text: '\$400',
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: isTab(context) ? 34 : 28,
                fontWeight: FontWeight.w700,
              )),
          TextSpan(
              text: '/',
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: isTab(context) ? 24 : 18,
              )),
          TextSpan(
              text: 'Package',
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: isTab(context) ? 22 : 16,
                fontWeight: FontWeight.w800,
              )),
        ])),
        CommonButton(
          tapEvent: () {},
        ),
      ],
    );
  }
}
