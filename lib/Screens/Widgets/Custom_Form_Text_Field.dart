import 'package:flutter/material.dart';

class CustomFormTextField extends StatelessWidget {
   CustomFormTextField({super.key,this.hintText,this.onChanged,});
  String? hintText;
  Function(String?)? onChanged;
  bool obscureText=true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText!,
      validator: (data){
        if(data!.isEmpty){return 'Field is required';}},
        onChanged:onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle:const TextStyle(
            color: Colors.black)
            , 


          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black
            ),
            borderRadius: BorderRadius.circular(10)
          ),
        border: OutlineInputBorder(
          borderSide: BorderSide(),
           borderRadius: BorderRadius.circular(10)
        )
      
    ));
  }
}