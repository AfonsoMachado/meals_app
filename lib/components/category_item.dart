import 'package:flutter/material.dart';
import 'package:meals_app/models/category.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem(this.category, {super.key});

  // Função para chamar a tela CategoriesMealsScreen
  void _selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed('/categories-meals', arguments: category);
  }

  @override
  Widget build(BuildContext context) {
    // Componente Clicavel
    return InkWell(
      onTap: () => _selectCategory(context),
      // Borda da área do click
      borderRadius: BorderRadius.circular(15),
      splashColor: Theme.of(context).colorScheme.primary,
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: [
                category.color.withOpacity(0.5),
                category.color,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
