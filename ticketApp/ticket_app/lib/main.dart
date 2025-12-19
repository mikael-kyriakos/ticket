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
          title: Text(
            "BathTicket",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white.withOpacity(0.7)
            ),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 66, 66, 66),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: <Color>[
                Color.fromARGB(255, 51, 51, 51),
                Color.fromARGB(255, 32, 31, 31),
              ],
              tileMode: TileMode.mirror,
            ),
          ),
          child: ListView(
            physics: BouncingScrollPhysics(),
            padding: const EdgeInsets.all(10),
            children: <Widget>[
              Container(
                margin: const EdgeInsets.fromLTRB(15,15,0,0),
                height: 50,
                child: Text('TICKETS AVAILABLE:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white.withOpacity(0.8))),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        /*
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[
                            Color.fromARGB(255, 249, 255, 255),
                            Colors.white,
                          ],
                          tileMode: TileMode.mirror,
                        ),
                        */
                        color: Colors.white.withOpacity(0.15),
                        border: Border.all(width: 1.2, color: Colors.white.withOpacity(0.2)),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      margin: const EdgeInsets.all(10),
                      height: 80,
                      child: Center(child: Text('LOCA', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white.withOpacity(0.8)))),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[
                          Color.fromARGB(255, 84, 116, 25),
                          Color.fromARGB(255, 37, 133, 11),
                        ],
                        tileMode: TileMode.mirror,
                      ),
                      border: Border.all(width: 1.2, color: Colors.white.withOpacity(0.2)),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    margin: const EdgeInsets.all(10),
                    height: 80,
                    width: 130,
                    child: Center(child: Text('£5', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white.withOpacity(0.8)))),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.15),
                        border: Border.all(width: 1.2, color: Colors.white.withOpacity(0.2)),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      margin: const EdgeInsets.all(10),
                      height: 80,
                      child: Center(child: Text('BAIANA', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white.withOpacity(0.8)))),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[
                          Color.fromARGB(255, 84, 116, 25),
                          Color.fromARGB(255, 37, 133, 11),
                        ],
                        tileMode: TileMode.mirror,
                      ),
                      border: Border.all(width: 1.2, color: Colors.white.withOpacity(0.2)),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    margin: const EdgeInsets.all(10),
                    height: 80,
                    width: 130,
                    child: Center(child: Text('£6', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white.withOpacity(0.8)))),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.15),
                        border: Border.all(width: 1.2, color: Colors.white.withOpacity(0.2)),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      margin: const EdgeInsets.all(10),
                      height: 80,
                      child: Center(child: Text('BRIDGE', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white.withOpacity(0.8)))),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[
                          Color.fromARGB(255, 84, 116, 25),
                          Color.fromARGB(255, 37, 133, 11),
                        ],
                        tileMode: TileMode.mirror,
                      ),
                      border: Border.all(width: 1.2, color: Colors.white.withOpacity(0.2)),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    margin: const EdgeInsets.all(10),
                    height: 80,
                    width: 130,
                    child: Center(child: Text('£6', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white.withOpacity(0.8)))),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.15),
                        border: Border.all(width: 1.2, color: Colors.white.withOpacity(0.2)),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      margin: const EdgeInsets.all(10),
                      height: 80,
                      child: Center(child: Text('Komedia', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white.withOpacity(0.8)))),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[
                          Color.fromARGB(255, 84, 116, 25),
                          Color.fromARGB(255, 37, 133, 11),
                        ],
                        tileMode: TileMode.mirror,
                      ),
                      border: Border.all(width: 1.2, color: Colors.white.withOpacity(0.2)),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    margin: const EdgeInsets.all(10),
                    height: 80,
                    width: 130,
                    child: Center(child: Text('£6', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white.withOpacity(0.8)))),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.15),
                        border: Border.all(width: 1.2, color: Colors.white.withOpacity(0.2)),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      margin: const EdgeInsets.all(10),
                      height: 80,
                      child: Center(child: Text('Asian Invasion', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white.withOpacity(0.8)))),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[
                          Color.fromARGB(255, 84, 116, 25),
                          Color.fromARGB(255, 37, 133, 11),
                        ],
                        tileMode: TileMode.mirror,
                      ),
                      border: Border.all(width: 1.2, color: Colors.white.withOpacity(0.2)),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    margin: const EdgeInsets.all(10),
                    height: 80,
                    width: 130,
                    child: Center(child: Text('£15', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white.withOpacity(0.8)))),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.15),
                        border: Border.all(width: 1.2, color: Colors.white.withOpacity(0.2)),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      margin: const EdgeInsets.all(10),
                      height: 80,
                      child: Center(child: Text('Snowball', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white.withOpacity(0.8)))),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[
                          Color.fromARGB(255, 84, 116, 25),
                          Color.fromARGB(255, 37, 133, 11),
                        ],
                        tileMode: TileMode.mirror,
                      ),
                      border: Border.all(width: 1.2, color: Colors.white.withOpacity(0.2)),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    margin: const EdgeInsets.all(10),
                    height: 80,
                    width: 130,
                    child: Center(child: Text('£25', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white.withOpacity(0.8)))),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.15),
                        border: Border.all(width: 1.2, color: Colors.white.withOpacity(0.2)),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      margin: const EdgeInsets.all(10),
                      height: 80,
                      child: Center(child: Text('Cheltenham Races', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white.withOpacity(0.8)))),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[
                          Color.fromARGB(255, 84, 116, 25),
                          Color.fromARGB(255, 37, 133, 11),
                        ],
                        tileMode: TileMode.mirror,
                      ),
                      border: Border.all(width: 1.2, color: Colors.white.withOpacity(0.2)),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    margin: const EdgeInsets.all(10),
                    height: 80,
                    width: 130,
                    child: Center(child: Text('£30', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white.withOpacity(0.8)))),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.15),
                        border: Border.all(width: 1.2, color: Colors.white.withOpacity(0.2)),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      margin: const EdgeInsets.all(10),
                      height: 80,
                      child: Center(child: Text('Glam', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white.withOpacity(0.8)))),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[
                          Color.fromARGB(255, 84, 116, 25),
                          Color.fromARGB(255, 37, 133, 11),
                        ],
                        tileMode: TileMode.mirror,
                      ),
                      border: Border.all(width: 1.2, color: Colors.white.withOpacity(0.2)),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    margin: const EdgeInsets.all(10),
                    height: 80,
                    width: 130,
                    child: Center(child: Text('£4', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white.withOpacity(0.8)))),
                  ),
                ],
              ),
            ],
          ),
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