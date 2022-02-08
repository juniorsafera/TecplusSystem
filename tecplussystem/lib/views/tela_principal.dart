import 'package:flutter/material.dart';
import 'package:tecplussystem/utils/paleta_cores.dart';

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final double larguraTela = MediaQuery.of(context).size.width;
    final double alturaTela = MediaQuery.of(context).size.height;
    return Row(
      children: [
        Container(
          color: PaletaCores.corFundoMenu,
          width: larguraTela * 0.3,
          height: alturaTela,
          
        ),
         Container(
          color: PaletaCores.corFundoAba,
          width: larguraTela * 0.7,
          height: alturaTela,
          
        ),
      ],
    );
  }
}