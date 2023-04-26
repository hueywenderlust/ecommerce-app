import 'package:ecommerce_app/components/custom_bottom_nav_bar.dart';
import 'package:ecommerce_app/enums.dart';
import 'package:ecommerce_app/models/Cart.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class WishListsScreen extends StatelessWidget {
  static String routeName = "/wish_lists";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.favourite)

    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Your Favorites",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "${demoCarts.length} items",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
