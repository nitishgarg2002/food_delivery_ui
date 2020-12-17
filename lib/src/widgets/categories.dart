import 'package:flutter/material.dart';
import 'package:food_delivery/src/modals/category.dart';
import 'package:food_delivery/src/helpers/commons.dart';

import 'custom_text.dart';
List <Category> categoriesList =[
  Category(name: 'Burger', image: 'assets/images/topmenu/ic_burger.png'),
  Category(name: 'Cake', image: 'assets/images/topmenu/ic_cake.png'),
  Category(name: 'IceCream', image: 'assets/images/topmenu/ic_ice_cream.png'),
  Category(name: 'Pasta', image: 'assets/images/topmenu/ic_pasta.png'),
  Category(name: 'Pizza', image: 'assets/images/topmenu/ic_pizza.png'),
  Category(name: 'SoftDrinks', image: 'assets/images/topmenu/ic_soft_drink.png'),
];
class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoriesList.length,
                  itemBuilder: (_,index){
                    
                    return Padding(
                      padding: const EdgeInsets.all(8.0),                  
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(color: white, boxShadow: [
                      BoxShadow(
                        color: red[50],
                        offset: Offset(4, 6),
                        blurRadius: 20,
                      ),
                    ]),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset(categoriesList[index].image,width: 50,),
                    )
                      ),
                      SizedBox(height: 10,),
                      CustomText(
                        text: categoriesList[index].name,
                        size: 14,
                        colors: black,
                      ),
                    ],
                  ),
                    );
                  },
                  
                  
                ),
              );
            
  }
}