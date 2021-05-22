import 'package:flutter/material.dart';
import 'package:meals/screens/categories_screen.dart';
import 'package:meals/screens/favorite_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _indiceTelaSelecionada = 0;
  final List<Map<String, Object>> _telas = [
    {'titulo': 'Categorias', 'tela': CategoriesScreen()},
    {'titulo': 'Favoritas', 'tela': FavoriteScreen()},
  ];

  _selecionarTela(int indice) {
    setState(() {
      _indiceTelaSelecionada = indice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_telas[_indiceTelaSelecionada]['titulo']),
      ),
      body: _telas[_indiceTelaSelecionada]['tela'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selecionarTela,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _indiceTelaSelecionada,
        //type: BottomNavigationBarType.shifting, -> Se ativar, add backgroudcolor nos bottomnavigationbaritem
        items: [
          BottomNavigationBarItem(
            // backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.category),
            label: 'Categorias',
          ),
          BottomNavigationBarItem(
            // backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.favorite),
            label: 'Favoritas',
          ),
        ],
      ),
    );
  }
}
