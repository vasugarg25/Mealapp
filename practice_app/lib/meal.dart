import 'package:flutter/material.dart';
enum Complexity{
Simple,Challenging,Hard
}
enum Affordibality{
Affodable,Pricey,Luxurious
}
class Meal{
  final String id;
  final List<String> categories;
  final String title;
  final String imageURL;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordibality affordibality;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;
  Meal({this.complexity,this.title,this.id,this.affordibality,this.categories,this.duration,this.imageURL,this.ingredients,this.isGlutenFree,this.isLactoseFree,this.isVegan,this.isVegetarian,this.steps});
}