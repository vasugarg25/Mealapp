import 'package:flutter/cupertino.dart';
import "package:flutter/foundation.dart";
import 'package:flutter/material.dart';
import 'package:practice_app/category_meal_screen.dart';
import 'package:practice_app/meal_detail_screen.dart';
import './dummy_data.dart';
import './category_item.dart';
import 'categories_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FOOD",
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 250, 230, 0.8),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
            title: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'RobotoCondensed')),
      ),
      home: CategoriesScreen(),
      routes: {
        '/category-meals':(ctx)=>CategoryMealScreen(), //these routes are helpful in bigger apps where there are many pages!
        '/meal-detail': (ctx)=>MealDetailScreen(),
      }

    );
  }
}
