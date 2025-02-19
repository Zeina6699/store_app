import 'dart:convert';

import 'package:store_app/Helper/Api.dart';
import 'package:store_app/Models/product_model/product_model.dart';
import 'package:http/http.dart' as http;

class CategoryService {
  Future<List<ProductModel>>getCategoryProduct({required String categoryName})async{
   List<dynamic> data=await Api().get(url: 'https://fakestoreapi.com/products/category/$categoryName') ;
  //  http.Response response=await http.get(Uri.parse('https://fakestoreapi.com/products/category/$categoryName'));
   //if (response.statusCode==200) {
  //List<dynamic> data=jsonDecode(response.body);
  
  List<ProductModel>productList=[];
  for(int i=0;i<data.length;i++){
   productList.add(ProductModel.fromJson(data[i]));
  }
  return productList;
}
//else{ throw Exception("There is a problem with StatusCode ${response.statusCode}");
}
