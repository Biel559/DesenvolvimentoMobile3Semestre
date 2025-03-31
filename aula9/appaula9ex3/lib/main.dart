import 'package:flutter/material.dart';

void main() {
  runApp(F1PilotsApp());
}

class F1PilotsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PilotsScreen(),
    );
  }
}

class PilotsScreen extends StatefulWidget {
  @override
  _PilotsScreenState createState() => _PilotsScreenState();
}

class _PilotsScreenState extends State<PilotsScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController titlesController = TextEditingController();
  final TextEditingController winsController = TextEditingController();
  final TextEditingController podiumsController = TextEditingController();
  final TextEditingController racesController = TextEditingController();
  final TextEditingController pointsController = TextEditingController();

  List<Map<String, String>> pilots = [];

  void addPilot() {
    setState(() {
      pilots.add({
        'Nome': nameController.text,
        'Idade': ageController.text,
        'Títulos': titlesController.text,
        'Vitórias': winsController.text,
        'Pódios': podiumsController.text,
        'Corridas': racesController.text,
        'Pontos': pointsController.text,
      });

      nameController.clear();
      ageController.clear();
      titlesController.clear();
      winsController.clear();
      podiumsController.clear();
      racesController.clear();
      pointsController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Pilotos de F1"),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: nameController, decoration: InputDecoration(labelText: "Nome")),
            TextField(controller: ageController, decoration: InputDecoration(labelText: "Idade"), keyboardType: TextInputType.number),
            TextField(controller: titlesController, decoration: InputDecoration(labelText: "Títulos"), keyboardType: TextInputType.number),
            TextField(controller: winsController, decoration: InputDecoration(labelText: "Vitórias"), keyboardType: TextInputType.number),
            TextField(controller: podiumsController, decoration: InputDecoration(labelText: "Pódios"), keyboardType: TextInputType.number),
            TextField(controller: racesController, decoration: InputDecoration(labelText: "Corridas"), keyboardType: TextInputType.number),
            TextField(controller: pointsController, decoration: InputDecoration(labelText: "Pontos"), keyboardType: TextInputType.number),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: addPilot,
              child: Text("Adicionar Piloto"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red, foregroundColor: Colors.white),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: pilots.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.black,
                    child: ListTile(
                      title: Text(
                        pilots[index]['Nome']!,
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Idade: ${pilots[index]['Idade']}\n"
                        "Títulos: ${pilots[index]['Títulos']}\n"
                        "Vitórias: ${pilots[index]['Vitórias']}\n"
                        "Pódios: ${pilots[index]['Pódios']}\n"
                        "Corridas: ${pilots[index]['Corridas']}\n"
                        "Pontos: ${pilots[index]['Pontos']}",
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
