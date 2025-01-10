
import 'package:flutter/material.dart';
import 'package:store_app/Screens/Widgets/Custom_Card.dart';

class CustomGrideView extends StatelessWidget {
  const CustomGrideView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      clipBehavior: Clip.none,
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.5,
          crossAxisSpacing: 10,
          mainAxisSpacing: 90
        ), 
        itemBuilder:(context,index){
          return CustomCard();
        });
  }
}
