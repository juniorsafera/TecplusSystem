import 'package:flutter/material.dart';
import 'package:tecplussystem/models/cliente.dart';
import 'package:tecplussystem/utils/paleta_cores.dart';

class ListaClientes extends StatefulWidget {
  final List<ModelCliente> cliente;
  const ListaClientes({
    Key? key,
    required this.cliente,
  }) : super(key: key);

  @override
  State<ListaClientes> createState() => _ListaClientesState();
}

class _ListaClientesState extends State<ListaClientes> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      
      child: ListView.builder(
          itemCount: widget.cliente.length,
          itemBuilder: (context, index) {
            final listaCliente= widget.cliente[index];
 
            return Container(
            
              child: Column(
                children: [
                  Card(
                    
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    color: PaletaCores.corPrimaria,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: ListTile(
                        leading: Container(
                          // ignore: prefer_const_constructors
                          margin: EdgeInsets.only(left: 80),
                          child:Text(listaCliente.id),),
                        title: Container(
                            // ignore: prefer_const_constructors
                            margin: EdgeInsets.only(right: 100),
                          child: Text(
                            listaCliente.nome,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(3),
                          child: Text(
                           listaCliente.tipo,
                            style: const TextStyle(
                              fontWeight: FontWeight.w100,
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        onTap: () {},
                        // ignore: prefer_const_constructors
                        trailing: Container(
                          margin: const EdgeInsets.only(right: 80),
                          child: Text(
                             listaCliente.telefone,
                            // ignore: prefer_const_constructors
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Divider(
                      height: 3,
                      thickness: 0.3,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
