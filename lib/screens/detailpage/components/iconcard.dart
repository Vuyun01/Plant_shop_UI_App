import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    Key? key, required this.icon,
  }) : super(key: key);

  final String icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      padding: EdgeInsets.all(10),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: kBgColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: Offset(0,10),
            blurRadius: 20,
            color: kPrimaryColor.withOpacity(0.2)
          ),
          BoxShadow(
            offset: Offset(-10,-10),
            blurRadius: 20,
            color: Colors.white
          ),
        ]
      ),
      child: SvgPicture.asset(icon),
    );
  }
}