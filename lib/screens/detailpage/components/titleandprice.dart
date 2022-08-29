import 'package:flutter/material.dart';

import '../../../constant.dart';

class TitileAndPrice extends StatelessWidget {
  const TitileAndPrice({
    Key? key, required this.title, required this.country, required this.price,
  }) : super(key: key);

  final String title;
  final String country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      margin: EdgeInsets.only(top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$title\n",
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: kTextColor, fontWeight: FontWeight.bold
                  )
                ),
                TextSpan(
                  text: "$country",
                  style: TextStyle(
                    fontSize: 20,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w400
                  )
                )
              ]
            )
          ), 
          Text(
            "\$${price.toString()}",
            style: Theme.of(context).textTheme.headline4!.copyWith(
              color: kPrimaryColor
            )
          )
        ],
      ),
    );
  }
}

