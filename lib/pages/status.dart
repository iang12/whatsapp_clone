import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/status_model.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 28.0,
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/832998/pexels-photo-832998.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 10.0,
                      child: Icon(
                        Icons.add,
                        size: 18.0,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Meu Status",
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "Toque para adicionar atualização de status",
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 15.0,
                        color: Colors.grey),
                  )
                ],
              ),
            ],
          ),
          Container(
            height: 35.0,
            color: Colors.black12,
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 15.0),
              child: Text(
                "atualizações recentes",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                    color: Colors.black45),
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32.0),
                  border: Border.all(width: 2.0, color: Colors.green)),
              child: CircleAvatar(
                radius: 28.0,
                foregroundColor: Theme.of(context).accentColor,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(status[2].imgUrl),
              ),
            ),
            title: Text(status[2].nome,
                style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('há 14 minutos '),
          ),
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32.0),
                  border: Border.all(width: 2.0, color: Colors.green)),
              child: CircleAvatar(
                radius: 28.0,
                foregroundColor: Theme.of(context).accentColor,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(status[1].imgUrl),
              ),
            ),
            title: Text(status[1].nome,
                style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('Hoje 08:43 '),
          ),
          Divider(),
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32.0),
                  border: Border.all(
                    width: 2.0,
                    color: Colors.green,
                  )),
              child: CircleAvatar(
                radius: 28.0,
                foregroundColor: Theme.of(context).accentColor,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(status[3].imgUrl),
              ),
            ),
            title: Text(status[0].nome,
                style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('há 30 minutos '),
          ),
          Container(
            height: 40.0,
            color: Colors.black12,
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 15.0),
              child: Text(
                "Atualizações Vizualizadas",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                    color: Colors.black45),
              ),
            ),
          ),
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32.0),
                  border: Border.all(
                    width: 2.0,
                    color: Colors.grey,
                  )),
              child: CircleAvatar(
                radius: 28.0,
                foregroundColor: Theme.of(context).accentColor,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(status[0].imgUrl),
              ),
            ),
            title: Text(status[0].nome,
                style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('hoje 01:22 '),
          ),
          Divider(),
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32.0),
                  border: Border.all(
                    width: 2.0,
                    color: Colors.grey,
                  )),
              child: CircleAvatar(
                radius: 28.0,
                foregroundColor: Theme.of(context).accentColor,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(status[4].imgUrl),
              ),
            ),
            title: Text(status[4].nome,
                style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('hoje 07:20 '),
          ),
        ],
      ),
    );
  }
}
