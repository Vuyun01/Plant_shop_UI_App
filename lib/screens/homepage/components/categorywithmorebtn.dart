import 'package:flutter/material.dart';

import '../../../constant.dart';

class CategoryWIthMoreBtn extends StatelessWidget {
  const CategoryWIthMoreBtn({
    Key? key,
    required this.name,
    required this.onPressed
  }) : super(key: key);

  final String name;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.cyan,
      padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: Theme.of(context).textTheme.headline6!.copyWith(
              color: kTextColor,
              fontWeight: FontWeight.bold
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor.withOpacity(0.7),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
              )
            ),
            onPressed: onPressed, 
            child: Text("More", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
          )
        ],
      ),
    );
  }
}
