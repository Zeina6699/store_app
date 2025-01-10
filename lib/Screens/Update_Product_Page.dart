import 'package:flutter/material.dart';
import 'package:store_app/Screens/Widgets/Custom_Form_Text_Field.dart';

class UpdateProductPage extends StatelessWidget {
  const UpdateProductPage({super.key});
  static String id ='update';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Update Product'),
        elevation: 0,
        centerTitle:true,
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
        child: Column(
          children: [
            CustomFormTextField(hintText: "Product Name"),
            const SizedBox(height: 15),
            CustomFormTextField(hintText: "Description"),
            const SizedBox(height: 15),
            CustomFormTextField(hintText: "Price"),
            const SizedBox(height: 15),
            CustomFormTextField(hintText: "Image"),


          ],
        ),
      ) ,

    );
  }
}