import 'package:flutter/material.dart';
import 'package:tecplussystem/components/lista_os.dart';
import 'package:tecplussystem/data/dados.dart';
import 'package:tecplussystem/models/os.dart';
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

    return Row(
      children: [
        Stack(
          children: [
            // Área conteúdo
            Container(
              color: PaletaCores.corFundoAba,
              width: larguraTela,
              height: alturaTela,
              child: Row(
                children: [
                  // barra lateral
                  Container(
                    color: PaletaCores.corPrimaria,
                    width: larguraTela * 0.2,
                    height: alturaTela,
                  ),
                  SizedBox(
                    width: larguraTela * 0.1,
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 25,
                      ),

                      // Linha com 2 botoes
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          // Botao ADD
                          Container(
                            width: 70,
                            height: 70,
                            decoration: const BoxDecoration(
                              color: PaletaCores.corPrimaria,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          // Botão Pesquisar
                          Container(
                            width: 70,
                            height: 70,
                            decoration: const BoxDecoration(
                              color: PaletaCores.corPrimaria,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                            ),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // Tabela de OS
                      SingleChildScrollView(
                        child: Container(
                          width: larguraTela * 0.6,
                          height: alturaTela * 0.8,
                          decoration: const BoxDecoration(
                            color: PaletaCores.corPrimaria,
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                          child: Column(
                            children: [
                              Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  // ignore: prefer_const_constructors
                                  Text(
                                    'Aberto',
                                    // ignore: prefer_const_constructors
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        decoration: TextDecoration.none),
                                  ),
                                  Container(
                                    width: 10,
                                    height: 10,
                                    // ignore: prefer_const_constructors
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius:
                                        const  BorderRadius.all(Radius.circular(50)),
                                    ),
                                  )
                                ],
                              ),
                              ListaOs(os: os),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
