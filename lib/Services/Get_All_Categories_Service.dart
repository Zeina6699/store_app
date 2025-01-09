import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/Helper/Api.dart';
class AllCategoriesService {
  Future<List<dynamic>> getAllCategories()async{
   // http.Response response=await http.get(Uri.parse('https://fakestoreapi.com/products/categories'));
 List<dynamic> data= await Api().get(url: 'https://fakestoreapi.com/products/categories');
   // if (response.statusCode==200) {
  //List<dynamic> data=jsonDecode(response.body);
         return data;
}
//else{ throw Exception("There is a problem with StatusCode ${response.statusCode}");}
  }
