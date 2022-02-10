// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:tecplussystem/components/botao_menu.dart';
import 'package:tecplussystem/components/lista_os.dart';
import 'package:tecplussystem/data/dados.dart';
import 'package:tecplussystem/utils/paleta_cores.dart';
import 'package:line_icons/line_icons.dart';

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
              child: Row(
                children: [
                  // barra lateral
                  Container(
                    color: PaletaCores.corPrimaria,
                    width: larguraTela * 0.2,
                    height: alturaTela,
                    // ignore: prefer_const_literals_to_create_immutables
                    child: Column(
                      children: [
                        Expanded(child: Container()),
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: BotaoMenu(texto: 'OS'),
                            )),
                          ),
                        ),
                        Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: BotaoMenu(texto: 'Clientes'),
                              )),
                            )),
                        Material(
                            color: Colors.transparent,
                            child: InkWell(
                                onTap: () {},
                                child: Container(
                                    child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: BotaoMenu(texto: 'Usuários'),
                                )))),
                        Material(
                            color: Colors.transparent,
                            child: InkWell(
                                onTap: () {},
                                child: Container(
                                    child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: BotaoMenu(texto: 'Caixa'),
                                )))),
                        Material(
                            color: Colors.transparent,
                            child: InkWell(
                                onTap: () {},
                                child: Container(
                                    child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: BotaoMenu(texto: 'Produtos'),
                                )))),
                        Material(
                            color: Colors.transparent,
                            child: InkWell(
                                onTap: () {},
                                child: Container(
                                    child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: BotaoMenu(texto: 'Serviços'),
                                )))),
                        Expanded(child: Container()),
                      ],
                    ),
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
                          Material(
                            color: Colors.transparent,
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: const BoxDecoration(
                                color: PaletaCores.corPrimaria,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                              ),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                   Icons.add,
                                    size: 50,
                                    color: Colors.white,
                                  )),
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
                        child: Card(
                          color: PaletaCores.corPrimaria,
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 10),
                            width: larguraTela * 0.6,
                            height: alturaTela * 0.7,
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
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
