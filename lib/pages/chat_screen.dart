import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat.dart';

class ChatScreen extends StatefulWidget {
  final String nome;
  final String image;
  ChatScreen({this.nome, this.image});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> with TickerProviderStateMixin {
  final TextEditingController _textController = TextEditingController();
  final List<ChatMessage> _listmsg = [];
  bool _isTyped = false;
  void _handledSubmit(String text) {
    _textController.clear();
    ChatMessage _message = new ChatMessage(
      text: text,
      animationController: AnimationController(
          duration: Duration(milliseconds: 700), vsync: this),
      nome: widget.nome,
    );
    setState(() {
      _listmsg.insert(0, _message);
      var dados = lista_mensagens.firstWhere((t) => t.nome == widget.nome);
      dados.mensagem = _message.text;
    });
    _message.animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                image: DecorationImage(
                    image: NetworkImage('${widget.image}'), fit: BoxFit.cover)),
          ),
        ),
        title: Text(
          widget.nome,
          style: TextStyle(fontSize: 19.0),
        ),
        actions: <Widget>[
          Row(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.videocam,
                  color: Colors.white,
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.phone,
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
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Flexible(
                child: ListView.builder(
                  padding: EdgeInsets.all(8.0),
                  reverse: true,
                  itemCount: _listmsg.length,
                  itemBuilder: (_, int index) => _listmsg[index],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 2.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: _buidlChatText()),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: CircleAvatar(
                    backgroundColor: Color(0xff075E54),
                    child: Icon(Icons.mic,color: Colors.white,),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buidlChatText() {
    return Container(
      width: 350.0,
      height: 50.0,
      padding: EdgeInsets.all(4.0),
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Flexible(
            child: TextField(
              controller: _textController,
              onChanged: (String text) {
                setState(() {
                  _isTyped = text.length > 0;
                });
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Digite aqui..',
                prefixIcon: Icon(Icons.person),
                suffixIcon: Icon(Icons.camera_alt),
              ),
            ),
          ),
          Container(
            child: IconButton(
              icon: Icon(Icons.send),
              onPressed:
                  _isTyped ? () => _handledSubmit(_textController.text) : null,
            ),
          )
        ],
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  ChatMessage({this.nome, this.animationController, this.text});
  final String nome;
  final String text;
  final AnimationController animationController;

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor:
          CurvedAnimation(parent: animationController, curve: Curves.easeOut),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(right: 16.0),
              child: CircleAvatar(
                  child: Text(
                nome[0],
                style: Theme.of(context).textTheme.subhead,
              )),
            ),
            Expanded(
                child: Column(
              children: <Widget>[
                Text(nome),
                Container(
                  margin: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    text,
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
