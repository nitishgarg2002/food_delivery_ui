import 'package:flutter/material.dart';
import 'package:food_delivery/src/helpers/screen_navigation.dart';
import 'package:food_delivery/src/modals/products.dart';
import 'package:food_delivery/src/helpers/commons.dart';
import 'package:food_delivery/src/screens/details.dart';
import 'package:food_delivery/src/widgets/custom_text.dart';

List<Product> productsList = [
  Product(
    name: 'Omlet',
    price: 5.99,
    rating: 4.2,
    vendor: 'GoodFoos',
    wishList: true,
    image: 'assets/images/popular_foods/ic_popular_food_1.png',
  ),
  Product(
    name: 'abcd',
    price: 5.99,
    rating: 4.2,
    vendor: 'GoodFoos',
    wishList: false,
    image: 'assets/images/popular_foods/ic_popular_food_2.png',
  ),
   Product(
    name: 'Food',
    price: 7.99,
    rating: 4.7,
    vendor: 'GoodFoos',
    wishList: true,
    image: 'assets/images/popular_foods/ic_popular_food_3.png',
  ),
  Product(
    name: 'Popular Food',
    price: 7.99,
    rating: 4.7,
    vendor: 'GoodFoos',
    wishList: true,
    image: 'assets/images/popular_foods/ic_popular_food_4.png',
  ),
   Product(
    name: 'Popular Food',
    price: 7.99,
    rating: 4.7,
    vendor: 'GoodFoos',
    wishList: true,
    image: 'assets/images/popular_foods/ic_popular_food_5.png',
  ),
];

class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: productsList.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(12, 14, 16, 12),
            child: GestureDetector(
              onTap: () {
                changeScreen(_, Details(product: productsList[index],));
              },
                child: Container(
                height: 220,
                width: 240,
                decoration: BoxDecoration(
                  color: white,
                  boxShadow: [
                    BoxShadow(
                      color: red[50],
                      offset: Offset(15, 5),
                      blurRadius: 30,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Image.asset(
                      productsList[index].image,
                      height: 140,
                      width: 140,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: CustomText(
                            text: productsList[index].name,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: white,
                                boxShadow: [
                                  BoxShadow(
                                    color: grey[300],
                                    offset: Offset(1, 1),
                                    blurRadius: 5,
                                  ),
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: productsList[index].wishList
                                  ? Icon(
                                      Icons.favorite,
                                      color: red,
                                      size: 18,
                                    )
                                  : Icon(
                                      Icons.favorite_border,
                                      color: red,
                                      size: 18,
                                    ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: CustomText(
                                text: productsList[index].rating.toString(),
                                colors: grey,
                                size: 14,
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Icon(
                              Icons.star,
                              color: red,
                              size: 16,
                            ),
                            Icon(
                              Icons.star,
                              color: red,
                              size: 16,
                            ),
                            Icon(
                              Icons.star,
                              color: red,
                              size: 16,
                            ),
                            Icon(
                              Icons.star,
                              color: red,
                              size: 16,
                            ),
                            Icon(
                              Icons.star,
                              color: grey,
                              size: 16,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: CustomText(
                            text: '\$${productsList[index].price}',
                            weight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
