import 'package:ecommerce_app/components/default_button.dart';
import 'package:ecommerce_app/models/FavouriteItem.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class WishListsCard extends StatelessWidget {
  const WishListsCard({
    Key? key,
    required this.favouriteItem,
  }) : super(key: key);

  final FavoriteItem favouriteItem;

  @override
  Widget build(BuildContext context) {
    return 
    
      Row(
      children: [
        SizedBox(
          width: 88,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(10)),
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(favouriteItem.product.images[0]),
            ),
          ),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              favouriteItem.product.title,
              style: TextStyle(color: Colors.black, fontSize: 16),
              maxLines: 2,
            ),
            SizedBox(height: 10),
            Text.rich(
              TextSpan(
                text: "\$${favouriteItem.product.price}",
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: kPrimaryColor),
                // children: [
                //   TextSpan(
                //       text: " x${favouriteItem.numOfItem}",
                //       style: Theme.of(context).textTheme.bodyText1),
                // ],
              ),
            )
          ],
        )
      ],
    );




 
  }
}
//  IconButton(
//         icon: const Icon(Icons.add_shopping_cart_rounded),
//         onPressed: () {},
//         style: IconButton.styleFrom(
//           foregroundColor: kPrimaryColor,
//           backgroundColor: kPrimaryColor,
//           disabledBackgroundColor: kPrimaryColor.withOpacity(0.12),
//           hoverColor: kPrimaryColor.withOpacity(0.08),
//           focusColor: kPrimaryColor.withOpacity(0.12),
//           highlightColor: kPrimaryColor.withOpacity(0.12),
//         )),