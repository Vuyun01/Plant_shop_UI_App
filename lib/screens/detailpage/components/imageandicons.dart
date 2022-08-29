import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant.dart';
import 'iconcard.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.8,
      child: Row(
        children: [
          Expanded(child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding + 10),
                child: IconButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  icon: SvgPicture.asset(AppAssets.back_arrow),
                ),
              ),
              Spacer(),
              IconCard(icon: AppAssets.icon_2,),
              IconCard(icon: AppAssets.sun),
              IconCard(icon: AppAssets.icon_3,),
              IconCard(icon: AppAssets.icon_4,)

            ],
          )),
          Container(
            height: size.height * 0.8,
            width: size.width * 0.7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                // topLeft: Radius.circular(00),
                bottomLeft: Radius.circular(60),
              ),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                fit: BoxFit.cover,
                image: AssetImage(AppAssets.img)
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: kPrimaryColor.withOpacity(0.3)
                )
              ]
            ),
            
          )
        ],
      ),
    );
  }
}

