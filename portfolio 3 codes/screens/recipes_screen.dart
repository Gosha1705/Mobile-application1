import 'package:flutter/material.dart';
import 'package:flutter_application_kitchen/screens/recipe_details_screen.dart';
import 'package:flutter_application_kitchen/models/recipe.dart';

class RecipesScreen extends StatelessWidget {
  final String category;
  final List<Recipe> recipes;

  RecipesScreen({required this.category, required this.recipes});

  @override
  Widget build(BuildContext context) {
    List<Recipe> categoryRecipes =
        recipes.where((recipe) => recipe.category == category).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
      body: ListView.builder(
        itemCount: categoryRecipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(categoryRecipes[index].name), // Отображаем название рецепта
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      RecipeDetailsScreen(recipe: categoryRecipes[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
