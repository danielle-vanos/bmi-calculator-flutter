
import 'package:flutter/material.dart';
import 'constants.dart';

class IconWidget extends StatelessWidget {

  IconWidget({required this.gender, required this.genderIcon});

  final String gender;
  final IconData genderIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 60.0
          ),
          SizedBox(height: 15,),
          Text(gender, style: kLabelTextStyle,
          )
      ],
    );
  }
}
