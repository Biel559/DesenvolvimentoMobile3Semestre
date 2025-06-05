import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Telaacionamento extends StatefulWidget {
  const Telaacionamento({super.key});

  @override
  State<Telaacionamento> createState() => _TelaacionamentoState();
}

class _TelaacionamentoState extends State<Telaacionamento> {
  @override
  void initState() {
    super.initState();
    _leitura();
  }

  final bool status = false;
  Color status_cor = Colors.red;
  int? temperatura;
  int? umidade;
  int? bomba;
  int? sensorUmidSolo;
  int? pH;

  bool _bombaLigada = false; // 👈 Controle do GIF animado/parado

  Future<void> _leitura() async {
    final response = await http.get(Uri.parse(
        'https://apiintegradorterceirosemestre-production.up.railway.app/dados'));
    final dados = json.decode(response.body);
    setState(() {
      temperatura = dados["temperatura"];
      umidade = dados["umidade"];
      sensorUmidSolo = dados["sensor_umidsolo"];
      pH = dados["pH"];
      bomba = dados["bomba"];
    });
  }

  Future<void> _ligarBomba() async {
    try {
      final response = await http.post(
        Uri.parse(
            'https://apiintegradorterceirosemestre-production.up.railway.app/bomba'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'estado': 1}),
      );

      if (response.statusCode == 200) {
        setState(() {
          status_cor = Colors.green;
          _bombaLigada = true; // 👈 Ligar GIF
        });
        print("Bomba ligada com sucesso!");
      } else {
        print("Erro ao ligar a bomba: ${response.statusCode}");
      }
    } catch (e) {
      print("Erro na requisição: $e");
    }
  }

  Future<void> _desligarBomba() async {
    try {
      final response = await http.post(
        Uri.parse(
            'https://apiintegradorterceirosemestre-production.up.railway.app/bomba'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'estado': 0}),
      );

      if (response.statusCode == 200) {
        setState(() {
          status_cor = Colors.red;
          _bombaLigada = false; // 👈 Parar GIF
        });
        print("Bomba desligada com sucesso!");
      } else {
        print("Erro ao desligar a bomba: ${response.statusCode}");
      }
    } catch (e) {
      print("Erro na requisição: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xFF024785),
          ),
        ),
        title: Text(
          'Acionamento',
          style:
              TextStyle(color: Color(0xFF024785), fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.center,
                width: 400,
                height: 150,
                color: status_cor,
                child: Text(
                  "Bomba de irrigação",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            // 👇 Aqui entra o GIF com controle
            Container(
              height: 200,
              width: 300,
              child: Image.asset(
                _bombaLigada
                    ? 'images/waterpump.gif'
                    : 'images/waterpump_still.jpg',
                gaplessPlayback: true,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF024785),
                    foregroundColor: Colors.white),
                onPressed: _ligarBomba,
                child: Text('Ligar bomba'),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF024785),
                    foregroundColor: Colors.white),
                onPressed: _desligarBomba,
                child: Text('Desligar bomba'),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF024785),
                    foregroundColor: Colors.white),
                onPressed: _leitura,
                child: Text('Leitura'),
              ),
            ),
            Text(
              "Temperatura: ${temperatura}",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Umidade: ${umidade}",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Sensor umidade solo: ${sensorUmidSolo}",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "pH: ${pH}",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Container(
              width: 150,
              height: 75,
              color: Color(0xFF024785),
              alignment: Alignment.center,
              child: Image.asset(
                'images/senai2.png',
                width: 500,
                height: 500,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
