import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DashboardScreen(),
  ));
}

// cria uma classe do tipo Stateless
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
  // polimorfismo que permite tratar as funções de forma particular
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Drawer propriedade do Scaffold que permite criar um elemento lateral
    drawer: Drawer(
      child: ListView(
        // adicionando espaçamento com o padding
        padding: EdgeInsets.zero,
        // children pois utilizaremos mais de um widget
       ),
    ),
    // criando o appbar

    appBar: AppBar(
      // atribuindo cor ao appbar
    backgroundColor: Colors.green,
    elevation: 5,
    iconTheme: IconThemeData(color: Colors.white),
    title: Row(
      children: [
        Padding(padding: EdgeInsets.all(12),
        child: Text('Monitor de Sensores',
        style: TextStyle(fontSize:20,
        fontWeight: FontWeight.w800,
        color: Colors.white ),),
        ),
      ],
    ),

    ),
    // corpo do Scaffold
    body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextField(
          decoration: InputDecoration(
            hintText: 'Buscar ...',
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30)
            )
          ),
          
          ),
        ),
        SizedBox(height: 20,),

        // Cria botoes em Card
       _DashboardButton(
        icon: Icons.analytics_outlined, 
        label: 'Monitoramento', 
        onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context)=>ColetaDadosScreen()));

        }),

        SizedBox(height: 10,),
         _DashboardButton(
        icon: Icons.settings_remote_outlined, 
        label: 'Sistema de controle', 
        onTap: (){
          Navigator.push(context,
           MaterialPageRoute(builder: (context)=>Telaacionamento()));
        }),

        SizedBox(height: 10,),
         _DashboardButton(
        icon: Icons.smart_toy_outlined ,
        label: 'Chatbot', 
        onTap: (){}),
       
      ],
    ),
    // cria widget Botton Navigator
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: 0,
      selectedItemColor: Colors.white,
      backgroundColor: Colors.brown[900],
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: ''),
          BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: ''),
          
      ],
    ),
    );
  }
}



// Cria uma classe chamada DashboardButton


class _DashboardButton extends StatelessWidget {
  

  // Criando atributos para a classe

  final IconData icon;
  final String label;
  final VoidCallback onTap;

  // Criando construtor com passagem de parametros obrigatorios

  const _DashboardButton({required this.icon,required this.label, 
  
  required this.onTap});

  @override
  Widget build(BuildContext context) {
    //  novo widget que permite tocar na tela
    return InkWell(
     onTap: onTap,
     child: Card(
      shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)),
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 12),
        child: Row(
          children: [
            Icon(
              icon,color: Colors.brown,size: 40,
            ),
            SizedBox(width: 16,),
            Text(label,style: TextStyle(
              fontSize: 18,color: Colors.brown
            ),)
          ],
        ),),
      
     ),
    );
  }
}