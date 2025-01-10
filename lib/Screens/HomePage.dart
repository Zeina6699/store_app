import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/Models/product_model/product_model.dart';
import 'package:store_app/Screens/Widgets/Custom_Card.dart';
import 'package:store_app/Screens/Widgets/Custom_Grid_View.dart';
import 'package:store_app/Services/Get_All_Products_Service.dart';

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
  title: const Text('New Trend',style: TextStyle(fontWeight:FontWeight.bold),),
),
body:Padding(
  padding:const   EdgeInsets.only(right:16,left: 16,top:100),

  child: FutureBuilder<List<ProductModel>>(
    future:AllProductsService().getAllProduct(),
    builder:(context,Snapshot){
      if(Snapshot.hasData){
       List<ProductModel>products=Snapshot.data!;
         return CustomGrideView(products:products);}
      else{return Center(child: const CircularProgressIndicator());}
     
    }

  )
)
);
  }
}
