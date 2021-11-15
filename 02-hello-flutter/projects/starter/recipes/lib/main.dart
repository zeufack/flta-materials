import 'package:flutter/material.dart';
import 'package:recipes/screens/home_screen.dart';

void main() => runApp(const RecipeApp());

class RecipeApp extends StatelessWidget {
  const RecipeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Recipe Calulator',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme
            .copyWith(primary: Colors.grey, secondary: Colors.black),
      ),
      home: const HomeScreen(
        title: 'Recipe Calculator',
      ),
    );
  }
}
