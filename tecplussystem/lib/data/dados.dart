

import 'package:tecplussystem/models/cliente.dart';
import 'package:tecplussystem/models/os.dart';
import 'package:tecplussystem/models/produto.dart';
import 'package:tecplussystem/models/servico.dart';

 final  dadosClientes = [
  ModelCliente(
    id: 'c1', 
    nome: 'Naiara Santos', 
    telefone: '86995663305', 
    dataCadastro: DateTime.now(), 
    tipo: 'Cliente Final'),
    ModelCliente(
    id: 'c2', 
    nome: 'Andreia Maria', 
    telefone: '86995663305', 
    dataCadastro: DateTime.now(), 
    tipo: 'Cliente Final'),
    ModelCliente(
    id: 'c3', 
    nome: 'Marcos Lima', 
    telefone: '86995663305', 
    dataCadastro: DateTime.now(), 
    tipo: 'Cliente Final'),
    ModelCliente(
    id: 'c4', 
    nome: 'Eric Celulares', 
    telefone: '86995663305', 
    dataCadastro: DateTime.now(), 
    tipo: 'Lojista'),
    ModelCliente(
    id: 'c5', 
    nome: 'Fox', 
    telefone: '86995663305', 
    dataCadastro: DateTime.now(), 
    tipo: 'Lojista'),
    ModelCliente(
    id: 'c6', 
    nome: 'Districell', 
    telefone: '86995663305', 
    dataCadastro: DateTime.now(), 
    tipo: 'Lojista'),
];

 const  dadosProdutos = [
  ModelProduto(
    id: 'p1', 
    titulo: 'Tela iPhone 8 branca', 
    valorC: 380.00, 
    valorD: 350.00, 
    estoque: 4) ,
    ModelProduto(
    id: 'p2', 
    titulo: 'Tela iPhone 7 branca', 
    valorC: 350.00, 
    valorD: 320.00, 
    estoque: 4),
    ModelProduto(
    id: 'p3', 
    titulo: 'Tela iPhone 8 Plus Branca', 
    valorC: 420.00, 
    valorD: 380.00, 
    estoque: 4),  
    ModelProduto(
    id: 'p4', 
    titulo: 'Bateria iPhone 7', 
    valorC: 180.00, 
    valorD: 160.00, 
    estoque: 8),
     ModelProduto(
    id: 'p5', 
    titulo: 'Bateria iPhone 8', 
    valorC: 180.00, 
    valorD: 160.00, 
    estoque: 8),
     ModelProduto(
    id: 'p6', 
    titulo: 'Bateria iPhone 7 Plus', 
    valorC: 210.00, 
    valorD: 180.00, 
    estoque: 8),
];

const dadosServicos = [
  ModelServico(
    id: 's1', 
    titulo: 'Reparo em placa iPhone 7', 
    descricao: '', 
    valorC: 420.00, 
    valorD: 380.00, 
    ),
     ModelServico(
    id: 's2', 
    titulo: 'Reparo em placa iPhone 8 Plus', 
    descricao: '', 
    valorC: 550.00, 
    valorD: 500.00, 
    ),
      ModelServico(
    id: 's2', 
    titulo: 'Reparo em placa iPhone 8 Plus', 
    descricao: '', 
    valorC: 550.00, 
    valorD: 500.00, 
    ),
];

 final dadosOS = [
   ModelOS(
     id: 'os1', 
     tipo: 'Orçamento', 
     dataEntrada: DateTime.now(), 
     cliente: 'c1', 
     sistema: 'IOS', 
     aparelho: 'Iphone 7', 
     molhado: false,
     problemasRelatados:[ 'Não grava áudio', 'Não ativa Viva-voz', 'Sem áudio auricular'], 
     problemasConstatados: ['Codec de áudio'], 
     servicosExecutados: ['s1'], 
     produtos: null, 
     situacao: 'Aguardando confirmação', 
     dataSaida: null, 
     valorC: 420.00, 
     valorD: 380.00, 
     ),
      ModelOS(
     id: 'os2', 
     tipo: 'Orçamento', 
     dataEntrada: DateTime.now(), 
     cliente: 'c2', 
     sistema: 'ANDROID', 
     aparelho: 'POCO M3', 
     molhado: false,
     problemasRelatados:[ 'Não liga'], 
     problemasConstatados: null, 
     servicosExecutados: null, 
     produtos: null, 
     situacao: 'Na Bancada', 
     dataSaida: null, 
     valorC: 00.00, 
     valorD: 00.00, 
     ),
      ModelOS(
     id: 'os3', 
     tipo: 'Orçamento', 
     dataEntrada: DateTime.now(), 
     cliente: 'c1', 
     sistema: 'IOS', 
     aparelho: 'Iphone 7 PLUS', 
     molhado: false,
     problemasRelatados:[ 'Não carrega'], 
     problemasConstatados: null, 
     servicosExecutados: null, 
     produtos: null, 
     situacao: 'Aguardando confirmação', 
     dataSaida: null, 
     valorC: 00.00, 
     valorD: 00.00, 
     ),
      ModelOS(
     id: 'os4', 
     tipo: 'Orçamento', 
     dataEntrada: DateTime.now(), 
     cliente: 'c4', 
     sistema: 'IOS', 
     aparelho: 'Iphone 7', 
     molhado: false,
     problemasRelatados:[ 'Não grava áudio', 'Não ativa Viva-voz', 'Sem áudio auricular'], 
     problemasConstatados: ['Codec de áudio'], 
     servicosExecutados: ['s1'], 
     produtos: null, 
     situacao: 'Aguardando confirmação', 
     dataSaida: null, 
     valorC: 420.00, 
     valorD: 380.00, 
     ),
      ModelOS(
     id: 'os5', 
     tipo: 'Orçamento', 
     dataEntrada: DateTime.now(), 
     cliente: 'c1', 
     sistema: 'IOS', 
     aparelho: 'Iphone 8', 
     molhado: false,
     problemasRelatados:[ 'Câmeras nao funcionam', 'Não ativa lanterna'], 
     problemasConstatados: null, 
     servicosExecutados:null, 
     produtos: null, 
     situacao: 'Na bancada', 
     dataSaida: null, 
     valorC: 00.00, 
     valorD: 00.00, 
     ),
 ];

