import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories_screen.dart';
import 'package:meals_app/screens/favorite_screen.dart';

class TabsScreen extends StatelessWidget {
  const TabsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        // Quantidade de abas
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Vamos Cozinhar?'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.category),
                  text: 'Categorias',
                ),
                Tab(
                  icon: Icon(Icons.star),
                  text: 'Favoritos',
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              CategoriesScreen(),
              FavoriteScreen(),
            ],
          ),
        ));
  }
}
