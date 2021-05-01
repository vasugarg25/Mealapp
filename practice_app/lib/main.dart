import 'package:flutter/cupertino.dart';
import "package:flutter/foundation.dart";
import 'package:flutter/material.dart';
import 'package:practice_app/category_meal_screen.dart';
import 'package:practice_app/meal_detail_screen.dart';
import 'package:practice_app/tabs_screen.dart';
import './dummy_data.dart';
import './category_item.dart';
import 'categories_screen.dart';
import 'filters_screen.dart';
import './meal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> filters = {
    'gluten': false,
    'lactose': false,
    'vegan': false,
    'vegetarian': false,
  };
  List<Meal> availablemeals = DUMMY_MEALS;
  void setFilters(Map<String, bool> filterData) {
    setState(() {
      filters = filterData;

      availablemeals = DUMMY_MEALS.where((meal) {
        if (filters["gluten"] && !meal.isGlutenFree) {
          return false;
        }
        if (filters["vegan"] && !meal.isVegan) {
          return false;
        }
        if (filters["vegetarian"] && !meal.isVegetarian) {
          return false;
        }
        if (filters["lactose"] && !meal.isLactoseFree) {
          return false;
        }
      }).toList();
    });
  }

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
        //home: TabScreen(),

        routes: {
          '/': (ctx) => TabScreen(),
          '/category-meals': (ctx) => CategoryMealScreen(
              availablemeals), //these routes are helpful in bigger apps where there are many pages!
          '/meal-detail': (ctx) => MealDetailScreen(),
          '/FiltersScreen': (ctx) => FiltersScreen(filters,setFilters),
        });
  }
}
