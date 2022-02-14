import 'package:flutter/material.dart';
import 'package:tecplussystem/components/avatar_sistema.dart';
import 'package:tecplussystem/data/dados.dart';
import 'package:tecplussystem/models/os.dart';
import 'package:tecplussystem/utils/paleta_cores.dart';

class ListaOs extends StatefulWidget {
  final List<ModelOS> os;
  const ListaOs({
    Key? key,
    required this.os,
  }) : super(key: key);

  @override
  State<ListaOs> createState() => _ListaOsState();
}
 


class _ListaOsState extends State<ListaOs> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: widget.os.length,
          itemBuilder: (context, index) {
            final listaOs = widget.os[index];

            bool isIos = listaOs.sistema;
            String sistemaAparelho = 'assets/android-icon.png';
            
            if (isIos) {
              sistemaAparelho = 'assets/apple-icon.png';
            }
            final dadosCliente = dadosClientes.where((element) {
              return element.id.contains(listaOs.cliente);
            }).toList();
/*
                 final categoriaAlimentos = DADOS_ALIMENTOS.where((alimento) {
      return alimento.categorias.contains(mCategoria.id);
    }).toList(); */

            // ignore: avoid_unnecessary_containers
            return Container(
              child: Column(
                children: [
                  Card(
                    
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    color: PaletaCores.corPrimaria,
                    child: ListTile(
                      leading: Container(
                        // ignore: prefer_const_constructors
                        margin: EdgeInsets.only(left: 80),
                        child: AvatarSistema(sistema: sistemaAparelho)),
                      title: Container(
                          // ignore: prefer_const_constructors
                          margin: EdgeInsets.only(right: 100),
                        child: Text(
                          listaOs.aparelho,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.all(3),
                        child: Text(
                          '(' +
                              listaOs.problemasRelatados
                                  .toString()
                                  .replaceAll('[', '')
                                  .replaceAll(']', '') +
                              ')',
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
                          dadosCliente
                              .map((e) => e.nome)
                              .toString()
                              .replaceAll('(', '')
                              .replaceAll(')', ''),
                          // ignore: prefer_const_constructors
                          style: TextStyle(color: Colors.white),
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
