import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_ui_app/models/place.dart';
import 'package:travel_ui_app/responsive.dart';

class Location extends StatelessWidget {
  const Location({
    Key key,
    @required this.place,
  }) : super(key: key);

  final Place place;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/icons/location_pin.svg',
          width: isTab(context) ? 16 : 12,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          place.location,
          style: TextStyle(
            fontSize: isTab(context) ? 16 : 12,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
