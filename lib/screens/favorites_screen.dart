import 'package:flutter/material.dart';
import 'package:flutter_meals_app/models/meal.dart';
import 'package:flutter_meals_app/widgets/meal_item.dart';

class FavoritesScreen extends StatefulWidget {
  final List<Meal> favoriteMeals;
  const FavoritesScreen(this.favoriteMeals, {Key? key}) : super(key: key);

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return widget.favoriteMeals.isEmpty
        ? Center(
            child: Text(
              'You Have No favorite yet',
              style: Theme.of(context).textTheme.headline6,
            ),
          )
        : ListView.builder(
            itemBuilder: (context, index) => MealItem(
              id: widget.favoriteMeals[index].id,
              title: widget.favoriteMeals[index].title,
              imageUrl: widget.favoriteMeals[index].imageUrl,
              duration: widget.favoriteMeals[index].duration,
              complexity: widget.favoriteMeals[index].complexity,
              affordability: widget.favoriteMeals[index].affordability,
            ),
            itemCount: widget.favoriteMeals.length,
          );
  }
}
