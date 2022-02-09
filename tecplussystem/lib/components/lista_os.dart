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
            return Card(
              color: PaletaCores.corPrimaria,
              child: ListTile(
                leading: AvatarSistema(sistema: sistemaAparelho),
                title: Text(
                  listaOs.aparelho,
                  style: const TextStyle(
                    color: Colors.white,
                     fontSize: 22,
                  ),
                   
                ),
                subtitle: Text('(' +
                  listaOs.problemasRelatados.toString().replaceAll('[', '').replaceAll(']','')
                  + ')',
                  style: const TextStyle(
                    fontWeight: FontWeight.w100,
                    color: Colors.white,
                    fontSize: 16,
                    ),
                ),
                onTap: () {},
              ),
            );
          }),
    );
  }
}
