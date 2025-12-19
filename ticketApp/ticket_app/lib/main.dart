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
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Center(
                child: Text('A random AWESOME idea:'),
              ),
              ElevatedButton(
                onPressed: () {
                  print('button pressed!');
                },
                child: Text('Next'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
