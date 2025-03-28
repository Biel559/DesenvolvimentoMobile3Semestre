import 'package:flutter/material.dart';

void main() {
  runApp(TelaApp());
}

class TelaApp extends StatelessWidget {
  const TelaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("App aula 08 - Exercício Contador"),
        ),
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String msg = "Mobile";
  int contador = 0;

  _exibemsg() {
    setState(() {
      msg = "Mobile 2";
    });
  }

  _limpar() {
    setState(() {
      msg = "";
    });
  }

  _aumentarContador() {
    setState(() {
      contador++;
    });
  }

  _zerarContador() {
    setState(() {
      contador = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.star, color: Colors.yellow, size: 50),
            Icon(Icons.favorite, color: Colors.red, size: 50),
            Icon(Icons.thumb_up, color: Colors.blue, size: 50),
          ],
        ),
        SizedBox(height: 20),
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.blueAccent,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    msg,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Contador: $contador",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 250,
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.person_2_rounded),
                title: Text("Usuario 1"),
                subtitle: Text("Descriçao do usuario 1"),
              ),
              ListTile(
                leading: Icon(Icons.person_add_alt_1_sharp),
                title: Text("Usuario 2"),
                subtitle: Text("Descriçao do usuario 2"),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: _exibemsg, child: Text("Mensagem")),
            IconButton(onPressed: _exibemsg, icon: Icon(Icons.mail)),
            ElevatedButton(onPressed: _limpar, child: Text("Limpar")),
            TextButton(onPressed: _limpar, child: Text("Limpar")),
            FloatingActionButton(onPressed: _exibemsg, child: Icon(Icons.access_alarm)),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: _aumentarContador, child: Text("Aumentar")),
            SizedBox(width: 10),
            IconButton(onPressed: _aumentarContador, icon: Icon(Icons.add_circle, size: 30, color: Colors.green)),
            SizedBox(width: 20),
            ElevatedButton(onPressed: _zerarContador, child: Text("Zerar")),
            SizedBox(width: 10),
            IconButton(onPressed: _zerarContador, icon: Icon(Icons.refresh, size: 30, color: Colors.red)),
          ],
        ),
      ],
    );
  }
}
