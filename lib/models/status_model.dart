import 'package:whatsapp_clone/models/chat.dart';

class StatusModel{
  final String imgUrl;
  final String nome;
  final String horario;
  StatusModel({this.imgUrl,this.horario,this.nome});
}

List<StatusModel> status = [
  StatusModel(
    nome: lista_mensagens[0].nome,
    horario: "Olá , 16:20h",
    imgUrl: lista_mensagens[0].imageUrl
  ),
  StatusModel(
    nome: lista_mensagens[1].nome,
    horario: "Olá , 09:50h",
    imgUrl: lista_mensagens[1].imageUrl
  ),
  StatusModel(
    nome: lista_mensagens[2].nome,
    horario: "Olá , 08:20h",
    imgUrl: lista_mensagens[2].imageUrl
  ),
  StatusModel(
    nome: lista_mensagens[3].nome,
    horario: "Olá , 08:20h",
    imgUrl: lista_mensagens[3].imageUrl
  ),
  StatusModel(
    nome: lista_mensagens[4].nome,
    horario: "Olá , 08:20h",
    imgUrl: lista_mensagens[4].imageUrl
  ),
];