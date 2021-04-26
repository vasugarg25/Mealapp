import 'package:flutter/material.dart';
import 'package:practice_app/categories_screen.dart';
import 'package:practice_app/favorites_screen.dart';

class TabScreen extends StatefulWidget {
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
          body: TabBarView(
            children:[
            CategoriesScreen(),FavoriteScreen()]
          ),
        ),

    );
  }
}
