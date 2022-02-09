import 'package:flutter/material.dart';
import 'package:tecplussystem/utils/paleta_cores.dart';

class AvatarSistema extends StatelessWidget {
  final String sistema;
  const AvatarSistema({ Key? key,
  required this.sistema,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return  CircleAvatar(
      backgroundColor: PaletaCores.corClara,
      child: Padding(
        padding: const EdgeInsets.all(3),
        child: Image.asset(sistema),
      ),
    );
  }
}