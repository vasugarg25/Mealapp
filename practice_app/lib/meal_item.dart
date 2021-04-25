import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_app/meal.dart';

class MealItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  MealItem({this.affordability,this.complexity,this.title,this.duration,this.imageUrl});
  void selectMeal() {}
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectMeal,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        elevation: 5,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.network(imageUrl,height: 230,width: double.infinity,fit: BoxFit.cover,),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
