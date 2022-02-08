class ModelOS {
  final String id;
  final String tipo;
  final DateTime dataEntrada;
  final String cliente;
  final String sistema;
  final String aparelho;
  final bool molhado;
  final List problemasRelatados;
  final List? problemasConstatados;
  final List? servicosExecutados;
  final List? produtos;
  final String situacao;
  final DateTime? dataSaida;
  final double valorC;
  final double valorD;

  const ModelOS({
    required this.id,
    required this.tipo,
    required this.dataEntrada,
    required this.cliente,
    required this.sistema,
    required this.aparelho,
    required this.molhado,
    required this.problemasRelatados,
    this.problemasConstatados,
    this.servicosExecutados,
    this.produtos,
    required this.situacao,
    this.dataSaida,
    required this.valorC,
    required this.valorD,
  });
}
