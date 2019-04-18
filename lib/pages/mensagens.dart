import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat.dart';
import 'package:whatsapp_clone/pages/chat_screen.dart';

class Mensagens extends StatefulWidget {
  @override
  _MensagensState createState() => _MensagensState();
}

class _MensagensState extends State<Mensagens> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(right:5.0),
        itemCount: lista_mensagens.length,
        itemBuilder: (BuildContext context, int position) => Column(
              children: <Widget>[
                Divider(
                  height: 10.0,indent: 70.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(lista_mensagens[position].imageUrl),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        lista_mensagens[position].nome,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        lista_mensagens[position].horario,
                        style: TextStyle(color: Colors.grey, fontSize: 13.0),
                      ),
                    ],
                  
                  ),
                  subtitle: Container(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text(lista_mensagens[position].mensagem,style: TextStyle(color:Colors.grey,fontSize: 15.0),),
                  ),
                  onTap: ()=> Navigator.push(
                    context, MaterialPageRoute(builder: (context)=>ChatScreen(nome:lista_mensagens[position].nome,image: lista_mensagens[position].imageUrl,))
                  ),
                ),
              ],
            ));
  }
}
