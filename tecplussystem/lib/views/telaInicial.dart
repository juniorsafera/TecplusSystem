import 'package:flutter/material.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({Key? key}) : super(key: key);


  

  @override
  Widget build(BuildContext context) {
    final _tabs = <Tab> [
const Tab(text: 'Os',),
const Tab(text: 'Clientes',),
const Tab(text: 'Usuários',),
const Tab(text: 'Caixa',),
const Tab(text: 'Produtos',),
const Tab(text: 'Serviços',),
    ];
    return DefaultTabController(
        length: 6,
        child:Scaffold( 
          
        appBar: AppBar(
          bottom: TabBar(tabs: _tabs),
        ),
      ),
    );
  }
}
