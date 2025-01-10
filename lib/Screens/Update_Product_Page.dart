import 'package:flutter/material.dart';
import 'package:store_app/Screens/Widgets/Update_Product_Page_Body.dart';
import 'package:store_app/Screens/Widgets/Custom_Button.dart';
import 'package:store_app/Screens/Widgets/Custom_Form_Text_Field.dart';

class UpdateProductPage extends StatelessWidget {
  const UpdateProductPage({super.key});
  static String id ='update';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title:const Text('Update Product'),
        elevation: 0,
        centerTitle:true,
      ),
      body:const UpdateProductPageBody());}}