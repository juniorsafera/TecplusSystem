import 'package:flutter/material.dart';
import 'package:tecplussystem/utils/paleta_cores.dart';

class BotaoMenu extends StatelessWidget {
  final String texto;
   
  const BotaoMenu({
    Key? key,
    required this.texto,
     
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: PaletaCores.corFundoBotao,
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      width: 200,
      height: 50,
      child: Center(
        child: Text(texto, style:const TextStyle(
          color: Colors.white,
          decoration: TextDecoration.none,
          fontSize: 20,
          fontWeight: FontWeight.w100,
        )),
      ),
    );
  }
}
