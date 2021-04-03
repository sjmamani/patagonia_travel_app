import 'package:flutter/material.dart';
import 'package:travel_ui_app/responsive.dart';

class TopBanner extends StatelessWidget {
  const TopBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * (isTab(context) ? 0.6 : 0.5),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        child: Image.asset(
          'assets/images/welcome.jpg',
          height: size.height * 0.5,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
