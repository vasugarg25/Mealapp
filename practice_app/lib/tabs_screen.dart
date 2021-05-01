import 'package:flutter/material.dart';
import 'package:practice_app/categories_screen.dart';
import 'package:practice_app/favorites_screen.dart';
import 'main_drawer.dart';
import './meal.dart';

class TabScreen extends StatefulWidget {
  final List<Meal> favoritemeals;
  TabScreen(this.favoritemeals);


  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Meals"),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.category),
                  text: "categories",
                ),
                Tab(icon: Icon(Icons.star), text: "favorites")
              ],
            ),
          ),
          drawer: MainDrawer(),
          body: TabBarView(
            children:[
            CategoriesScreen(),FavoriteScreen(widget.favoritemeals)]
          ),
        ),

    );
  }
}
