import 'package:flutter/material.dart';
import 'package:flutter_application_kitchen/models/recipe.dart';

class RecipeDetailsScreen extends StatelessWidget {
  final Recipe recipe;

  RecipeDetailsScreen({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.name),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ingredients:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: recipe.ingredients
                  .map((ingredient) => Text('- $ingredient'))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
