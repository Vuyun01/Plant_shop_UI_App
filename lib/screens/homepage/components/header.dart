import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.2,
      // color: Colors.cyan,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.18,
            padding: EdgeInsets.only(
              left: kDefaultPadding, 
              right: kDefaultPadding, 
              bottom: 30 + kDefaultPadding
            ),
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hi UIshopy!",
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold
                  )
                ),
                Image.asset(AppAssets.logo)
              ],
            ),
          ),
          Positioned(
            // top: ,
            bottom: 0, right: 0, left: 0,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 20, 
                    color: kPrimaryColor.withOpacity(0.2)
                  )
                ]
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value){},
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(color: kPrimaryColor.withOpacity(0.4)),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                      //suffix doesnt work with Svg images
                    )
                  ),
                  SvgPicture.asset(AppAssets.search)
                ],
              ),
            )
          )
        ]
      ),
    );
  }
}