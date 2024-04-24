// lib/models/recipe.dart
import 'dart:convert';

List<Recipe> parseRecipes(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Recipe>((json) => Recipe.fromJson(json)).toList();
}

class Recipe {
  final String name;
  final String category;
  final List<String> ingredients;

  Recipe({
    required this.name,
    required this.category,
    required this.ingredients,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      name: json['name'],
      category: json['category'],
      ingredients: List<String>.from(json['ingredients']),
    );
  }
}


