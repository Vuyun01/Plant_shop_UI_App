import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constant.dart';
import 'components/body.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        leading: IconButton(
          onPressed: (){}, 
          icon: SvgPicture.asset(AppAssets.menu)
        ),
      ),
      body: Body(),
      bottomNavigationBar: Container(
        height: 60,
        padding: EdgeInsets.only(
          left: kDefaultPadding * 2,
          right: kDefaultPadding * 2,
          bottom: kDefaultPadding
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -10),
              blurRadius: 30,
              color: kPrimaryColor.withOpacity(0.2)
            )
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: (){}, 
              icon: SvgPicture.asset(AppAssets.flower)
            ),
            IconButton(
              onPressed: (){}, 
              icon: SvgPicture.asset(AppAssets.heart_icon)
            ),
            IconButton(
              onPressed: (){}, 
              icon: SvgPicture.asset(AppAssets.user_icon)
            ),
          ],
        ),
      ),
    );
  }
}