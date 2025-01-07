
import 'dart:convert';

import 'package:store_app/Models/product_model/product_model.dart';
import 'package:http/http.dart' as http;

class AllProductsService{
 Future <List<ProductModel>> getAllProduct()async{
   http.Response response= await http.get(Uri.parse('https://fakestoreapi.com/products'));
   List<dynamic> data= jsonDecode(response.body);

   List<ProductModel> ProductList=[];
   for(int i=0;i<data.length;i++){
    ProductList.add(ProductModel.fromJson(data[i]));}
    return ProductList;
  }
}