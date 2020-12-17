import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:food_delivery/src/modals/products.dart';
import 'package:food_delivery/src/helpers/commons.dart';
import 'package:food_delivery/src/widgets/custom_text.dart';
import 'package:food_delivery/src/widgets/small_floating_button.dart';

class Details extends StatefulWidget {
  final Product product;
  Details({@required this.product});
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 300,
              child: Stack(
                children: [
                  Carousel(
                    images: [
                      AssetImage(widget.product.image),
                      AssetImage(widget.product.image),
                      AssetImage(widget.product.image),
                    ],
                    dotBgColor: white,
                    dotColor: grey,
                    dotIncreasedColor: red,
                    dotIncreaseSize: 1.2,
                    autoplay: false,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: black,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Stack(
                                children: [
                                  Image.asset(
                                    'assets/images/menus/ic_cart.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              right: 5,
                              bottom: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: grey,
                                      offset: Offset(2, 1),
                                      blurRadius: 3,
                                    )
                                  ],
                                  color: white,
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 4, right: 4),
                                  child: CustomText(
                                    text: '2',
                                    colors: red,
                                    size: 18,
                                    weight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    right: 10,
                    bottom: 55,
                    child: Container(
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: grey[400],
            offset: Offset(2,1),
            blurRadius: 3
          )
        ]
      ),
      child: Padding(
        padding: EdgeInsets.all(6),
        child: Icon(
          Icons.favorite,
          size: 22,
          color: red,
        ),
      ),
    ),
                  )
                ],
              ),
            ),
            CustomText(
              text: widget.product.name,
              size: 26,
              weight: FontWeight.bold,
            ),
            CustomText(
              text: widget.product.price.toString(),
              size: 20,
              weight: FontWeight.w400,
            ),
          ],
        ),
      ),
    );
  }
}
