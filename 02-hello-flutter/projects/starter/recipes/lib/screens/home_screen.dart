import 'package:flutter/material.dart';
import 'package:recipes/components/build_recipe_card.dart';
import 'package:recipes/models/recipe_model.dart';
import 'package:recipes/screens/recipe_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  final String title;
  const HomeScreen({Key? key, required this.title}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
          child: Container(
        child: ListView.builder(
            itemCount: Recipe.samples.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return RecipeDetail(recipe: Recipe.samples[index]);
                  }));
                },
                child: BuildRecipeCard(recipe: Recipe.samples[index]),
              );
            }),
      )),
    );
  }
}
