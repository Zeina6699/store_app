import 'package:flutter/material.dart';
import 'package:store_app/Models/product_model/product_model.dart';
import 'package:store_app/Screens/Widgets/Custom_Grid_View.dart';
import 'package:store_app/Services/Get_All_Products_Service.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
  padding:const   EdgeInsets.only(right:16,left: 16,top:100),

  child: FutureBuilder<List<ProductModel>>(
    future:AllProductsService().getAllProduct(),
    builder:(context,Snapshot){
      if(Snapshot.hasData){
       List<ProductModel>products=Snapshot.data!;
         return CustomGrideView(products:products);}
      else{return const Center(child: CircularProgressIndicator());}
     
    }

  )
    );
  }
}

 