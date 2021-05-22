import 'package:flutter/material.dart';
import 'package:meals/components/main_drawer.dart';
import 'package:meals/models/settings.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  var settings = Settings();

  Widget _criarSwtich(
    String titulo,
    String subtitulo,
    bool valor,
    Function onChanged,
  ) {
    return SwitchListTile.adaptive(
      title: Text(titulo),
      subtitle: Text(subtitulo),
      value: valor,
      onChanged: onChanged,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child:
                Text('Filtros', style: Theme.of(context).textTheme.headline6),
          ),
          Expanded(
            child: ListView(
              children: [
                _criarSwtich(
                  'Sem glúten',
                  'Exibir somente alimentos sem glúten',
                  settings.isGlutenFree,
                  (valor) => setState(() => settings.isGlutenFree = valor),
                ),
                _criarSwtich(
                  'Sem lactose',
                  'Exibir somente alimentos sem lactose.',
                  settings.isLactoseFree,
                  (valor) => setState(() => settings.isLactoseFree = valor),
                ),
                _criarSwtich(
                  'Vegana',
                  'Exibir somente alimentos veganos.',
                  settings.isVegan,
                  (valor) => setState(() => settings.isVegan = valor),
                ),
                _criarSwtich(
                  'Vegetariana',
                  'Exibir somente alimentos vegetarianos.',
                  settings.isVegetarian,
                  (valor) => setState(() => settings.isVegetarian = valor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
