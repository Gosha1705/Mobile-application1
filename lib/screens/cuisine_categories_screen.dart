import 'package:flutter/material.dart';
import 'package:flutter_application_kitchen/screens/recipes_screen.dart';
import 'package:flutter_application_kitchen/models/recipe.dart';

class CuisineCategoriesScreen extends StatelessWidget {
  final List<Recipe> recipes;

  CuisineCategoriesScreen({required this.recipes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cuisine Categories'),
      ),
      body:
       ListView(
        children: [
          _buildCategoryTile(context, 'Italian'),
          _buildCategoryTile(context, 'Indian'),
          _buildCategoryTile(context, 'Turkish'),
          // Добавьте здесь другие категории кухни при необходимости
        ],
      ),
    );
  }

  Widget _buildCategoryTile(BuildContext context, String category) {
    return ListTile(
      title: Text(category),
      
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RecipesScreen(
              category: category.toLowerCase(), // Преобразуем категорию в нижний регистр
              recipes: recipes,
            ),
          ),
        );
      },
    );
  }
}
