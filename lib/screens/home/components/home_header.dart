import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/screens/cart/cart_screen.dart';
import 'package:ecommerce_app/screens/notifications/notifications_screen.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'icon_btn_with_counter.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconButton(onPressed: () {
                Navigator.pushNamed(context, NotificationsScreen.routeName);

          }
          , icon: Icon(Icons.notifications_active), color: kPrimaryColor,
          iconSize: 25,),
          // IconBtnWithCounter(
          //   svgSrc: "assets/icons/Bell.svg",
          //   numOfitem: 3,
          //   press: () {
          //       Navigator.pushNamed(context, NotificationsScreen.routeName);
              
          //   },
          // ),
        ],
      ),
    );
  }
}
