import 'package:flutter/material.dart';
import 'package:meals/utils/app_routes.dart';

class MainDrawer extends StatelessWidget {
  Widget _criarItem(IconData icon, String label, Function onTap) {
    return ListTile(
      leading: Icon(icon, size: 26),
      title: Text(
        label,
        style: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 24,
            fontWeight: FontWeight.bold),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).accentColor,
            alignment: Alignment.bottomCenter,
            child: Text(
              'Partiu cozinhar?',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          SizedBox(height: 20),
          _criarItem(
            Icons.restaurant,
            'Refeições',
            () => Navigator.of(context).pushNamed(AppRoutes.HOME),
          ),
          _criarItem(
            Icons.settings,
            'Configurações',
            () => Navigator.of(context).pushNamed(AppRoutes.SETTINGS),
          )
        ],
      ),
    );
  }
}
