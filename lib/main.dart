import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:store_app/Screens/HomePage.dart';
import 'package:store_app/Screens/Update_Product_Page.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Homepage.id :(context)=>Homepage(),
        UpdateProductPage.id:(context)=>UpdateProductPage(),

      },
  initialRoute:Homepage.id ,

    );}}