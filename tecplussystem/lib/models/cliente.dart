class ModelCliente {
  final String id;
  final String nome;
  final String telefone;
  final DateTime dataCadastro;
  final String tipo;

  const ModelCliente(
      {required this.id,
      required this.nome,
      required this.telefone,
      required this.dataCadastro,
      required this.tipo});
}
