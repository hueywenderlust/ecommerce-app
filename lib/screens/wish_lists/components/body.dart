import 'package:ecommerce_app/models/FavouriteItem.dart';
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
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView.builder(
        itemCount: demoFavItems.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: 
          Slidable(
            key: const ValueKey(0),
            startActionPane: ActionPane(
                motion: ScrollMotion(),
                dismissible: DismissiblePane(onDismissed: () {
                  debugPrint('add to cart');
                },),
                children: [
                  SlidableAction(onPressed: null,
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    icon: Icons.shopping_cart_checkout_rounded,
                    // label: 'Add to cart',
                    ),
                ],
              ),
              endActionPane: ActionPane(
                motion: ScrollMotion(),
                dismissible: DismissiblePane(onDismissed: () {
                  debugPrint('remove item from fav');
                   setState(() {
                    demoFavItems.removeAt(index);
                  });
                },),
                children: [
                  SlidableAction(onPressed: null,
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  icon: Icons.delete,
                  // label: 'Remove fav',
                  )
                ],
              ),
            child: WishListsCard(favouriteItem: demoFavItems[index]),

          ),
        ),
      ),
    );
  }
}

