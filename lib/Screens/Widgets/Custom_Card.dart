import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(blurRadius: 40,color: Colors.grey.withOpacity(.15),spreadRadius:0,offset: Offset(10, 10) )
        ]),
        width: 220,
        height: 150,
        child:const Card(
         elevation:15,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 12),
            child: Column( 
              mainAxisAlignment: MainAxisAlignment.end,
      
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [

              Text('HandBag LV',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 19)),
              SizedBox(height: 3),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Text(r'$225',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
              Icon(FontAwesomeIcons.solidHeart,color: Colors.red,)
            
                ],
              )
            ],),
          ),
        ),
      ),
        Positioned(
    
    //top:-50
          left: 95,
          bottom:90,
          child: Image.network(
            height: 100,
            'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg'),
        )
    ]);
  }
}