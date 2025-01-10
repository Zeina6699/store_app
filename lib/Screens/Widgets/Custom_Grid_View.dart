import 'package:store_app/Models/product_model/product_model.dart';
import 'package:store_app/Screens/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:store_app/Screens/Widgets/Custom_Card.dart';

class CustomGrideView extends StatelessWidget {
  const CustomGrideView({
    super.key, required this.products,
  });
  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
   
    return GridView.builder(
      itemCount: products.length,
      clipBehavior: Clip.none,
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.5,
          crossAxisSpacing: 10,
          mainAxisSpacing: 90
        ), 
        itemBuilder:(context,index){
          return CustomCard(product: products[index]);
        });
  }
}
