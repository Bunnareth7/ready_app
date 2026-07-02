import 'package:flutter/material.dart';

class FoodModel {
  final String image1;
  final String image2;
  final String image3;
  final String image4;

  FoodModel({required this.image1, required this.image2, required this.image3, required this.image4});

  
  static List<FoodModel> get foodDummy => [
    FoodModel(
      image1: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAMcj9aRfzu8bVJPPqO1NBK8FThjH48OrzXapmas7_v2SFA0yfy-vvnYw&s=10",
      image2: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLJ5EkYJBAPWJ7p-XlhVDMeaS6qHtkUfMYF8zVJUCFow&s=10",
      image3:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLJ5EkYJBAPWJ7p-XlhVDMeaS6qHtkUfMYF8zVJUCFow&s=10" ,
      image4:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLJ5EkYJBAPWJ7p-XlhVDMeaS6qHtkUfMYF8zVJUCFow&s=10" ,
  )];
}
