// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:tecplussystem/components/botao_menu.dart';
import 'package:tecplussystem/components/lista_os.dart';
import 'package:tecplussystem/data/dados.dart';
import 'package:tecplussystem/utils/paleta_cores.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({
    Key? key,
  }) : super(key: key);

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

final os = dadosOS.toList();

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    final double larguraTela = MediaQuery.of(context).size.width;
    final double alturaTela = MediaQuery.of(context).size.height;

    // ignore: unused_element
    void _acaoOs() {}

    return Row(
      children: [
        Row(
          children: [
            // Área conteúdo
            Container(
              color: PaletaCores.corFundoAba,
              width: larguraTela,
              height: alturaTela,
              child: Column(
                children: [
                  const SizedBox(
                    height: 5,
                  ),

                  // Linha com 2 botoes
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // Botao ADD
                      Material(
                        color: Colors.transparent,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50)),
                          ),
                          elevation: 5,
                          color: PaletaCores.corPrimaria,
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                              color: PaletaCores.corPrimaria,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                            ),
                            child: RawMaterialButton(
                                shape: CircleBorder(),
                                onPressed: () {},
                                child: Icon(
                                  Icons.add,
                                  size: 30,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      // Botão Pesquisar
                      Material(
                        color: Colors.transparent,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50)),
                          ),
                          elevation: 5,
                          color: PaletaCores.corPrimaria,
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                              color: PaletaCores.corPrimaria,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                            ),
                            child: RawMaterialButton(
                                shape: CircleBorder(),
                                onPressed: () {},
                                child: Icon(
                                  Icons.search_rounded,
                                  size: 30,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ),
                       const SizedBox(
                    width: 20,
                  ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  // Tabela de OS
                  SingleChildScrollView(
                    child: Card(
                      color: PaletaCores.corPrimaria,
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8, vertical: 10),
                        width: larguraTela * 0.9,
                        height: alturaTela * 0.6,
                        decoration: const BoxDecoration(
                          color: PaletaCores.corPrimaria,
                          borderRadius:
                              BorderRadius.all(Radius.circular(25)),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    'Aberto',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(5),
                                    width: 10,
                                    height: 10,
                                    decoration: BoxDecoration(
                                      color: Colors.green[800],
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(50)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            ListaOs(os: os),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
