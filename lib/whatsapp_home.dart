import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/contatos.dart';
import 'pages/camera.dart';
import 'pages/chamadas.dart';
import 'pages/status.dart';
import 'pages/mensagens.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with TickerProviderStateMixin {
  TabController _tabController;
  var iconWhats = Icons.message;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4)
      ..addListener(() {
        setState(() {
          switch (_tabController.index) {
            case 0:
              break;
            case 1:
              iconWhats = Icons.message;
              break;
            case 2:
              iconWhats = Icons.camera_alt;
              break;
            case 3:
              iconWhats = Icons.add_call;
              break;
          }
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp Clone'),
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: _tabController,
          isScrollable: true,
          labelPadding: EdgeInsets.only(left:15.0,right: 15.0),
          tabs: <Widget>[
            Tab(
              child: Icon(Icons.camera_alt),
            ),
            Container(
              child: Tab(
                child: Text('CONVERSAS'),
              ),
            ),
            Tab(
              child: Text('STATUS'),
            ),
            Tab(
              child: Text('CHAMADAS'),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[Camera(), Mensagens(), Status(), Chamadas()],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(
          iconWhats,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) => Contato()));
        },
      ),
    );
  }
}
