import 'package:flutter/material.dart';
import 'package:practice_app/category_meal_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  CategoryItem(this.id,this.title, this.color);
  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      '/category-meals',arguments: {'title':title,'id':id}          //we can use push instead of pushnamed routes for navigate diff pages and arguments are used to pass the data!
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: ()=>selectCategory(context),
        splashColor: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(15),
        child: Card(
          child: Text(
            title,
            style: Theme.of(context).textTheme.title,
          ),
          color: color,
        ));
  }
}
