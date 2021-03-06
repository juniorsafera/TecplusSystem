// ignore: duplicate_ignore
// ignore: file_names

// ignore_for_file: file_names, duplicate_ignore
// ignore: file_names
// ignore: file_names

import 'package:flutter/material.dart';
import 'package:tecplussystem/utils/paleta_cores.dart';
import 'package:tecplussystem/views/clientes.dart';
import 'package:tecplussystem/views/tela_principal.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // lista de tabs
    final _tabs = <Tab>[
      const Tab(
        icon: Icon(Icons.file_copy),
        text: 'O.S',
      ),
      const Tab(
        icon: Icon(Icons.people),
        text: 'Clientes',
      ),
      const Tab(
        icon: Icon(Icons.supervised_user_circle_rounded),
        text: 'Usuários',
      ),
      const Tab(
        icon: Icon(Icons.attach_money),
        text: 'Caixa',
      ),
      const Tab(
        icon: Icon(Icons.production_quantity_limits_sharp),
        text: 'Produtos',
      ),
      const Tab(
        icon: Icon(Icons.workspaces_filled),
        text: 'Serviços',
      ),
    ];

    // lista de tabsViews
    final _tabViews = <Widget>[
      const TelaPrincipal(),
      const TelaClientes(),
      const Scaffold(body: Center(child: Text('Usuários'))),
      const Scaffold(body: Center(child: Text('Caixa'))),
      const Scaffold(body: Center(child: Text('Produtos'))),
      const Scaffold(body: Center(child: Text('Serviços'))),
    ];
    return DefaultTabController(
      initialIndex: 1,
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('TecPlus-System')),
          backgroundColor: PaletaCores.corFundoBotao,
          bottom: TabBar(labelColor: Colors.white, tabs: _tabs),
        ),
        body: TabBarView(
          
          children: _tabViews),
      ),
    );
  }
}
