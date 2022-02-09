import 'package:flutter/material.dart';
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

            if(isIos){
                sistemaAparelho = 'assets/apple-icon.png';
            }

            // ignore: avoid_unnecessary_containers
            return Card(
              color: PaletaCores.corPrimaria,
              child: ListTile(
                leading: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.red)),
                  // ignore: prefer_const_constructors
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child:   FittedBox(
                        // ignore: unnecessary_const
                        child: 
                             
                             Text(
                                sistemaAparelho,
                                // ignore: prefer_const_constructors
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 16,
                                ),
                              )),
                  ),
                ),
                title: Text(listaOs.aparelho),
              ),
            );
          }),
    );
  }
}
