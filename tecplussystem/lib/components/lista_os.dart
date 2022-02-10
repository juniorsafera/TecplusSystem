import 'package:flutter/material.dart';
import 'package:tecplussystem/components/avatar_sistema.dart';
import 'package:tecplussystem/models/os.dart';
import 'package:tecplussystem/utils/paleta_cores.dart';

class ListaOs extends StatelessWidget {
  final List<ModelOS> os;
  const ListaOs({
    Key? key,
    required this.os,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: os.length,
          itemBuilder: (context, index) {
            final listaOs = os[index];

            bool isIos = listaOs.sistema;
            String sistemaAparelho = 'assets/android-icon.png';

            if (isIos) {
              sistemaAparelho = 'assets/apple-icon.png';
            }

            // ignore: avoid_unnecessary_containers
            return Container(
              child: Column(
                children: [
                  Card(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 100,
                    ),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    color: PaletaCores.corPrimaria,
                    child: ListTile(
                      leading: AvatarSistema(sistema: sistemaAparelho),
                      title: Text(
                        listaOs.aparelho,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
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
                      trailing: Text(
                        'Erik Celulares',
                        // ignore: prefer_const_constructors
                        style: TextStyle(color: Colors.white),
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
