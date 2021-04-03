import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_ui_app/constants.dart';
import 'package:travel_ui_app/responsive.dart';

class DaysChooser extends StatefulWidget {
  const DaysChooser({
    Key key,
  }) : super(key: key);

  @override
  _DaysChooserState createState() => _DaysChooserState();
}

class _DaysChooserState extends State<DaysChooser> {
  int days = 2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: isTab(context) ? 150 : 100,
          height: isTab(context) ? 75 : 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: kInputBackgroundColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              StepperButton(
                title: '-',
                tapEvent: () {
                  if (days > 1) {
                    setState(() {
                      days--;
                    });
                  }
                },
              ),
              Text(days.toString(),
                  style: TextStyle(
                      fontSize: isTab(context) ? 24 : 16,
                      fontWeight: FontWeight.bold)),
              StepperButton(
                title: '+',
                tapEvent: () {
                  setState(() {
                    days++;
                  });
                },
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        SvgPicture.asset(
          'assets/icons/timer.svg',
          width: isTab(context) ? 24 : 16,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          days.toString(),
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: isTab(context) ? 24 : 18,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Text('Days',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: isTab(context) ? 24 : 18,
            )),
      ],
    );
  }
}

class StepperButton extends StatelessWidget {
  const StepperButton({
    Key key,
    @required this.title,
    @required this.tapEvent,
  }) : super(key: key);

  final String title;
  final GestureTapCallback tapEvent;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tapEvent,
      child: Container(
        width: isTab(context) ? 45 : 30,
        height: isTab(context) ? 75 : 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: kPrimaryColor),
        child: Text(
          title,
          style: TextStyle(
              color: Colors.white, fontSize: isTab(context) ? 22 : 18),
        ),
      ),
    );
  }
}
