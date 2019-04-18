import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat.dart';

class Chamadas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, position) {
          return Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.account_circle,
                      size: 64.0,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      lista_mensagens[position].nome,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20.0),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.call_made,
                                        size: 18.0,
                                        color: Colors.green,
                                      ),
                                        Padding(padding: EdgeInsets.all(2.0),),
                                      Text("20 Março,"),
                                      Text("12:33 "),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.call,
                              color: Colors.green,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Divider(),
            ],
          );
        },
        itemCount: lista_mensagens.length,
      ),
    );
  }
}
