import 'package:flutter/material.dart';

import 'components/top_banner.dart';
import 'components/welcome_text.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              TopBanner(),
              WelcomeText(),
            ],
          ),
        ),
      ),
    );
  }
}
