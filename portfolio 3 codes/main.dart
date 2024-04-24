import 'package:flutter/material.dart';
import 'package:flutter_application_kitchen/screens/cuisine_categories_screen.dart';
import 'package:flutter_application_kitchen/models/recipe.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

Future<List<Recipe>> loadRecipesFromJson() async {
  final jsonString = await rootBundle.loadString('assets/recipes.json');
  final List<dynamic> jsonList = json.decode(jsonString)['recipes'];
  return jsonList.map((json) => Recipe.fromJson(json)).toList();
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final List<Recipe> recipes = await loadRecipesFromJson();
  runApp(MyApp(recipes: recipes)); // Здесь передаем список рецептов
}

class MyApp extends StatelessWidget {
  final List<Recipe> recipes; // Здесь храним список рецептов

  MyApp({required this.recipes}); // Обновленный конструктор

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CuisineCategoriesScreen(recipes: recipes), // Передаем список рецептов
    );
  }
}
