import 'package:flutter/material.dart';

class Constants {
  static const Duration smallDelay = Duration(milliseconds: 1500);
  static const Duration mediumDelay = Duration(milliseconds: 3000);

  static const mediumAnimationSpeed = Duration(milliseconds: 400);

  static const email = 'isaacchukwuka67@gmail.com';
  static const phoneNumber = '+234 9057469410';
  static const address = 'OSAMOR19';

  static const linkedInUrl = 'https://www.linkedin.com/in/peter-osamor-isaac-chukwuka-003ab51a4/';
  static const xUrl = 'https://x.com/CyberZik';
  static const githubUrl = 'https://github.com/OSAMOR19';
  static const resumeURl =
      'https://drive.google.com/file/d/1RuRh_n9ZeRvFgpsdbueiBRTafvKb4lfU/view?usp=sharing';

  static outLinedText(BuildContext context, {double strokeWidth = 1}) {
    return Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..color = Theme.of(context).colorScheme.secondary;
  }
}
