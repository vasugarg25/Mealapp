import 'package:flutter/material.dart';
import './meal.dart';
import './meal_item.dart';
class FavoriteScreen extends StatelessWidget {
  final List<Meal> favoritemeals;
  FavoriteScreen(this.favoritemeals);
  @override
  Widget build(BuildContext context) {
    if (favoritemeals.isEmpty) {
      return
        Center(child: Text("You Don't have anything favorite"),);
    }
    else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favoritemeals[index].id,
            title: favoritemeals[index].title,
            imageUrl: favoritemeals[index].imageUrl,
            duration: favoritemeals[index].duration,
            affordability: favoritemeals[index].affordability,
            complexity: favoritemeals[index].complexity,
          );
        },
        itemCount: favoritemeals.length,
      );
    }
  }
}
