import 'dart:convert';

import 'package:http/http.dart' as http;
class Api{
  Future<dynamic> get({required String url})async{
    http.Response response=await http.get(Uri.parse(url));

    if(response.statusCode==200){return jsonDecode(response.body);}
    else{ throw Exception("There is a problem with StatusCode ${response.statusCode}");

  }
}

Future<dynamic>post({required String url,required dynamic body,required String? token})async{
  Map<String,String> headers={};
if(token!=null){
  headers.addAll(
   { 'Authorization':'Bearer $token'});
}
  
   http.Response response = await http.post(Uri.parse(url),body: body,headers:headers);
   Map<String,dynamic>data=jsonDecode(response.body);
   return data;}

    /*{
            'title': 'test product',
            'price': '13.5',
            'description': 'lorem ipsum set',
            'image': 'https://i.pravatar.cc',
            'category': 'electronic'
          },
          headers: {
            'Accept':'application/json',
            'Content-Type':'application/x-www-form-urlencoded',
            'Authorization':'Bearer'
          }
          );
       print(response.body);
        }*/
}


