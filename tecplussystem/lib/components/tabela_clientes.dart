import 'package:flutter/material.dart';
import 'package:tecplussystem/models/cliente.dart';

class TabelaClientes extends StatefulWidget {
  final List<ModelCliente> clientes;
  const TabelaClientes({
    Key? key,
    required this.clientes,
  }) : super(key: key);

  @override
  _TabelaClientesState createState() => _TabelaClientesState();
}

class _TabelaClientesState extends State<TabelaClientes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DataTable(
        
        columns: const <DataColumn>[
        DataColumn(
          label: Text('Nome'),
        ),
        DataColumn(
          label: Text('Telefone'),
        )
      ], rows: const <DataRow>[
        DataRow(cells: <DataCell> [

        ])
      ]),
    );
  }
}
