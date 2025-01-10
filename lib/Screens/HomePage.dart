import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  static String id='home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  actions: [IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.cartPlus))],
 backgroundColor: Colors.white,
 elevation:0,
  centerTitle: true,
  title: Text('New Trend',style: TextStyle(fontWeight:FontWeight.bold),),
),
body: 
Container(
  decoration: BoxDecoration(boxShadow: [
    BoxShadow(blurRadius: 40,color: Colors.grey.withOpacity(.15),spreadRadius:0,offset: Offset(10, 10) )
  ]),
  width: 220,
  height: 200,
  child: Card(
   elevation:15,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical:16),
      child: Column( 
        mainAxisAlignment: MainAxisAlignment.end,

        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
       
        Image.asset(''),
        Text('HandBag LV',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 18)),
        SizedBox(height: 10,),
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

    );
  }
}