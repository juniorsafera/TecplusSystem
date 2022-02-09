import 'package:flutter/material.dart';

class AvatarSistema extends StatelessWidget {
  final String sistema;
  const AvatarSistema({ Key? key,
  required this.sistema,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Text(sistema),
    );
  }
}