import 'package:flutter/material.dart';

import 'Product.dart';

class FavoriteItem {
  final Product product;
  final int numOfItem;

  FavoriteItem({required this.product, required this.numOfItem});
}

// Demo data for our cart

List<FavoriteItem> demoFavItems = [
  FavoriteItem(product: demoProducts[0], numOfItem: 2),
  FavoriteItem(product: demoProducts[1], numOfItem: 1),
  FavoriteItem(product: demoProducts[2], numOfItem: 1),
  FavoriteItem(product: demoProducts[3], numOfItem: 2),
];
