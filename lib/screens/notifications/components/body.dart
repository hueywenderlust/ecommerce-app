import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/models/FavouriteItem.dart';
import 'package:ecommerce_app/models/Notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';

import '../../../size_config.dart';
import 'wish_lists_card.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}


class _BodyState extends State<Body> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      EdgeInsets.all(20),
          // EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView.separated( 
        // Let the ListView know how many items it needs to build.
        itemCount: demoNotification.length,

        // Provide a builder function. This is where the magic happens.
        // Convert each item into a widget based on the type of item it is.
        itemBuilder: (context, index) {
          final item = demoNotification[index];

          return ListTile(
            leading: Icon(Icons.donut_large_rounded, color: Colors.green,),
            title: Text(item.title, style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w600),),
            subtitle: Text(item.description),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            thickness: 2,
          );
        },
      )
    );
  }
}

