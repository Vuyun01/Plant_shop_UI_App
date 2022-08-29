import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_shop/constant.dart';

import 'iconcard.dart';
import 'imageandicons.dart';
import 'titleandprice.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(),
          TitileAndPrice(title: "Angelica", country: "Russia", price: 540,),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Row(
              children: [
                SizedBox(
                  width: size.width/2,
                  height: 80,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(30))
                      ),
                    ),
                    onPressed: (){}, 
                    child: Text("Buy Now", style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ))
                  ),
                ),
                SizedBox(
                  width: size.width/2,
                  height: 80,
                  child: TextButton(
                    onPressed: (){}, 
                    child: Text("Description", style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ))
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// Row(
//               children: [
//                 SizedBox(
//                   width: size.width/2,
//                   height: 80,
//                   child: TextButton(
//                     style: TextButton.styleFrom(
//                       backgroundColor: kPrimaryColor,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.only(topRight: Radius.circular(30))
//                       )
//                     ),
//                     onPressed: (){}, 
//                     child: Text("Buy Now", style: Theme.of(context).textTheme.headline6!.copyWith(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold
//                     ))
//                   ),
//                 ),
//                 SizedBox(
//                   width: size.width/2,
//                   height: 80,
//                   child: TextButton(
//                     onPressed: (){}, 
//                     child: Text("Buy Now", style: Theme.of(context).textTheme.headline6!.copyWith(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold
//                     ))
//                   ),
//                 ),
//               ],
//             ),