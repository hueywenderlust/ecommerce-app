import 'package:ecommerce_app/components/default_button.dart';
import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/models/Cart.dart';
import 'package:ecommerce_app/models/Product.dart';
import 'package:ecommerce_app/screens/cart/cart_screen.dart';
import 'package:ecommerce_app/size_config.dart';
import 'package:flutter/material.dart';

import 'color_dots.dart';
import 'product_description.dart';
import 'top_rounded_container.dart';
import 'product_images.dart';

class Body extends StatelessWidget {
  final Product product;

   Body({Key? key, required this.product}) : super(key: key);
  List<Cart> cartLists = [];


  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    ColorDots(product: product),
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.15,
                          right: SizeConfig.screenWidth * 0.15,
                          bottom: getProportionateScreenWidth(40),
                          top: getProportionateScreenWidth(15),
                        ),
                        child: 
                        ElevatedButton(
                          
                          child: const Text('Add To Cart'),
                          style: TextButton.styleFrom(
                            shape:
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            primary: Colors.white,
                            backgroundColor: kPrimaryColor,
                          ),
                          onPressed: () {
                            showModalBottomSheet<void>(
                              context: context,
                              builder: (BuildContext context) {
                                return SizedBox(
                                  height: 200,
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Icon(Icons.check_circle_outline_outlined, color: Colors.green, size: 50,),
                                          const Text('Item added to cart!'),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 30.0),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                ElevatedButton(
                                                  style: TextButton.styleFrom(
                                                    shape:
                                                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                                    primary: Colors.white,
                                                    backgroundColor: kPrimaryColor,
                                                  ),
                                                child: const Text('Go to Cart'),
                                                onPressed: () => Navigator.pushNamed(context, CartScreen.routeName),
                                              ),
                                              ElevatedButton(
                                                style: TextButton.styleFrom(
                                                    shape:
                                                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                                    primary: Colors.white,
                                                    backgroundColor: kPrimaryColor,
                                                  ),
                                                child: const Text('Continue Shopping'),
                                                onPressed: () => Navigator.pop(context),
                                              ),
                                              ],
                                            ),
                                          )
                                          
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                        // DefaultButton(
                        //   text: "Add To Cart",
                        //   press: () {
                            
                        //     // cartLists.add(product)
                        //     // add item to cart list 
                        //     // show modal continue shopping ? proceed to cart 
                        //   },
                        // ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
