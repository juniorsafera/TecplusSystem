import 'package:flutter/material.dart';
import 'package:tecplussystem/models/cliente.dart';
import 'package:tecplussystem/utils/paleta_cores.dart';

class ListaClientes extends StatelessWidget {
  final List<ModelCliente> cliente;
  const ListaClientes({
    Key? key,
    required this.cliente,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: PaletaCores.corPrimaria,
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: 450,
          child: ListView.builder(
              itemCount: cliente.length,
              itemBuilder: (contex, index) {
                final listaClientes = cliente[index];
                return Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Icon(
                                        Icons.people_alt,
                                        color: Colors.white,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        listaClientes.nome,
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.phone,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      'Telefone: ${listaClientes.telefone}',
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),

                              Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.workspaces_filled,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      'Tipo: ${listaClientes.tipo}',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),

                              Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Icon(
                                      Icons.calendar_today,
                                      color: Colors.white,
                                    ),
                                    FittedBox(
                                      fit: BoxFit.fitWidth,
                                      child: Text(
                                        'Cadastrado: ${listaClientes.dataCadastro.day}/0${listaClientes.dataCadastro.month}/${listaClientes.dataCadastro.year}',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              //Text('Data Cadastro: ${listaClientes.dataCadastro}'),
                            ]),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Divider(
                        height: 3,
                        thickness: 0.3,
                        color: Colors.white,
                      ),
                    ),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
