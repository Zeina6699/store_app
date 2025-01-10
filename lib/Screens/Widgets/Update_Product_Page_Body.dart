import 'package:flutter/material.dart';
import 'package:store_app/Screens/Widgets/Custom_Button.dart';
import 'package:store_app/Screens/Widgets/Custom_Form_Text_Field.dart';

class UpdateProductPageBody extends StatelessWidget {
  const UpdateProductPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFormTextField(hintText: "Product Name"),
            const SizedBox(height: 15),
            CustomFormTextField(hintText: "Description"),
            const SizedBox(height: 15),
            CustomFormTextField(hintText: "Price"),
            const SizedBox(height: 15),
            CustomFormTextField(hintText: "Image"),
            const SizedBox(height: 60),
            CustomButton(text: "Update")

          ],
        ),
      );
  }
}
  