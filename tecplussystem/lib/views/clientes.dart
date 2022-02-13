import 'package:flutter/material.dart';
import 'package:tecplussystem/components/lista_clientes.dart';
import 'package:tecplussystem/data/dados.dart';
import 'package:tecplussystem/utils/paleta_cores.dart';

class TelaClientes extends StatefulWidget {
  const TelaClientes({Key? key}) : super(key: key);

  @override
  State<TelaClientes> createState() => _TelaClientesState();
}

final cliente = dadosClientes.toList();

class _TelaClientesState extends State<TelaClientes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: PaletaCores.corFundoAba,
        child: ListaClientes(
          cliente: cliente,
        ),
      ),
    );
  }
}
