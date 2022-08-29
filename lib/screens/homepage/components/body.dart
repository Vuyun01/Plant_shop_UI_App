import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_shop/constant.dart';
import 'package:plant_shop/screens/homepage/components/plantproductcard.dart';

import 'categorywithmorebtn.dart';
import 'featuredplants.dart';
import 'header.dart';
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Header(size: size),
          CategoryWIthMoreBtn(name: "Recommended", onPressed: (){}),
          RecommendedPlants(),
          CategoryWIthMoreBtn(name: "Featured", onPressed: (){}),
          FeaturedPlants()
        ],
      ),
    );
    
  }
}





