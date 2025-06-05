import 'package:app_projint/screens/tela2.dart';
import 'package:app_projint/screens/tela3.dart';
import 'package:app_projint/screens/tela4.dart';
import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(), 
  ));
}

// Mantém o DashboardScreen como está, sem alterações!
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF024785),
        elevation: 5,
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Row(
          children: [
            Image.asset(
              'images/senai.png',
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'TerraByte AgroSolution',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                    color: Colors.white),
              ),
            ),
            Spacer(),
            CircleAvatar(
              backgroundColor: Colors.brown[100],
              child: Icon(
                Icons.person,
                color: Colors.brown,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Buscar ...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
          SizedBox(height: 20),
          _DashboardButton(
              icon: Icons.analytics_outlined,
              label: 'Monitoramento',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ColetaDadosScreen()));
              }),
          SizedBox(height: 10),
          _DashboardButton(
              icon: Icons.settings_remote_outlined,
              label: 'Sistema de controle',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Telaacionamento()));
              }),
          SizedBox(height: 10),
          _DashboardButton(
              icon: Icons.smart_toy_outlined,
              label: 'Chatbot',
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => ChatScreen()));
              }),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.white,
        backgroundColor: Color(0xFF024785),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
        ],
      ),
    );
  }
}

class _DashboardButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _DashboardButton(
      {required this.icon, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 12),
          child: Row(
            children: [
              Icon(
                icon,
                color: Color(0xFF6DBD29),
                size: 40,
              ),
              SizedBox(width: 16),
              Text(
                label,
                style: TextStyle(fontSize: 18, color: Color(0xFF6DBD29)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
