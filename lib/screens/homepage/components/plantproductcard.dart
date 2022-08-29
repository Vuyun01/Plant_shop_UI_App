import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../detailpage/detailpage.dart';

class RecommendedPlants extends StatelessWidget {
  const RecommendedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          PlantProductCard(
            image: AppAssets.image_1,
            title: "Samantha",
            country: "Russia",
            price: 440,
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_) => DetailPage()));
            },
          ),
          PlantProductCard(
            image: AppAssets.image_2,
            title: "Samantha",
            country: "Russia",
            price: 440,
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_) => DetailPage()));
            },
          ),
          PlantProductCard(
            image: AppAssets.image_3,
            title: "Samantha",
            country: "Russia",
            price: 440,
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_) => DetailPage()));
            },
          ),
          PlantProductCard(
            image: AppAssets.image_3,
            title: "Samantha",
            country: "Russia",
            price: 440,
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_) => DetailPage()));
            },
          ),
          PlantProductCard(
            image: AppAssets.image_1,
            title: "Samantha",
            country: "Russia",
            price: 440,
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_) => DetailPage()));
            },
          ),
        ],
      ),
    );
  }
}

class PlantProductCard extends StatelessWidget {
  const PlantProductCard({
    Key? key,
    required this.image, 
    required this.price, 
    required this.title, 
    required this.country, 
    required this.onTap
  }) : super(key: key);
  final int price;
  final String title;
  final String country;
  final String image;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size.width * 0.4,
        // color: Colors.cyan,
        margin: EdgeInsets.only(left: kDefaultPadding, bottom: kDefaultPadding ),
        child: Column(
          children: [
            Image.asset(image, fit: BoxFit.fill,),
            Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 30,
                    color: kPrimaryColor.withOpacity(0.15)
                  )
                ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button
                        ),
                        TextSpan(
                          text: "$country",
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5)
                          )
                        ),
                      ]
                    )
                  ),
                  Text(
                    '\$${price.toString()}',
                    style: Theme.of(context).textTheme.button!.copyWith(color: kPrimaryColor)
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

