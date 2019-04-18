import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat.dart';

class Contato extends StatefulWidget {
  @override
  _ContatoState createState() => _ContatoState();
}

class _ContatoState extends State<Contato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Contatos'),
            Text(
              '294 contatos',
              style: TextStyle(fontSize: 12.0, fontStyle: FontStyle.italic),
            )
          ],
        ),
        actions: <Widget>[
          Row(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              )
            ],
          )
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 10.0),
        itemCount: lista_mensagens.length,
        itemBuilder: (BuildContext context, int position) => ListTile(
          
              leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage(lista_mensagens[position].imageUrl)),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    '+55 81 7119-2345',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'um dia eu anda vou dizer não foi facil',
                    style: TextStyle(fontSize: 14.0),
                  )
                ],
              ),
            ),
      ),
    );
  }
}
