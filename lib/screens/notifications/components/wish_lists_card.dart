import 'package:ecommerce_app/components/default_button.dart';
import 'package:ecommerce_app/models/FavouriteItem.dart';
import 'package:ecommerce_app/models/Notifications.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class NotificationsCard extends StatelessWidget {
  const NotificationsCard({
    Key? key,
    required this.notifications,
  }) : super(key: key);

  final Notifications notifications;

  @override
  Widget build(BuildContext context) {
    return 
    
      Row(
      children: [
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              notifications.title,
              style: TextStyle(color: kPrimaryColor, fontSize: 16, fontWeight: FontWeight.w600),
              maxLines: 2,
            ),
            SizedBox(height: 10),
            Text.rich(
              TextSpan(
                text: "\$${notifications.description}",
                style: Theme.of(context).textTheme.bodyText1),
              ),
          ],
        )
      ],
    );
  }
}
