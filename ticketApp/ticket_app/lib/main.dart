import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // CAN REMOVE IN FINAL APP - FOR CLEANER DEBUG
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          title: Text("BathTicket", style: TextStyle(fontWeight: FontWeight.bold)),
          centerTitle: true,
          backgroundColor: Colors.teal[300],
        ),
        body: Column(
          children: [
            
          ]
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket_outlined), label: 'Marketplace'),
            BottomNavigationBarItem(icon: Icon(Icons.merge_type_rounded), label: 'Messages'),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline_rounded), label: 'Profile'),
          ],
          currentIndex: 0,
          selectedItemColor: Colors.teal,
          elevation: 0,
        ),
      ),
    );
  }
}
