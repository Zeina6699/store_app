import 'package:store_app/Helper/Api.dart';
import 'package:store_app/Models/product_model/product_model.dart';

class UpdateProductService {

 Future<ProductModel>updateProduct({required String id,required String title,required String price,required String description,required String image,required String category})async{
 Map<String,dynamic> data=  await Api().post(
    url: 'https://fakestoreapi.com/products/$id', 
    body: {
            'title':title,
            'price': price,
            'description': description,
            'image':image,
            'category': category
          },
           //token: token
           );
           return ProductModel.fromJson(data);
  }
}