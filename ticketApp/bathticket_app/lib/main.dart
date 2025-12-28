import 'dart:convert';

import 'package:flutter/material.dart';

// Qr code generator import
import 'package:qr_flutter/qr_flutter.dart';

// Crypto (for hashes) import
import 'package:crypto/crypto.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // NOTE - CAN DELETE THE ABOVE PROPERTY ONCE DONE WITH APP
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 44, 87, 151)),
        useMaterial3: true,
        scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      home: const MyHomePage(title: 'BathTicket'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.
  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  int currentIndex = 0;

  final _children = <Widget>[
    EventListView(),
    SellPage(),
    TicketsPage()
  ];

  void onTabTapped(int index) {
    setState(() {currentIndex = index;});
  }

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.

    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        backgroundColor: Colors.white,
        title: Text(widget.title, style: TextStyle(fontWeight: FontWeight.bold)),
        elevation: 0,
      ),
      /*
      body: Center(
        child: EventListView()
        /*
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // eventsArranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have:',
            ),
            Text(
              '£$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
        */
      ),
      */
      body: _children[currentIndex],
      /*
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      */
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.how_to_vote_rounded),
            label: 'Buy',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sell_rounded),
            label: 'Sell',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_rounded),
            label: 'Tickets',
          ),
        ],
        elevation: 0,
        currentIndex: currentIndex,
      ),
    );
  }
}

class EventListView extends StatelessWidget {
  EventListView({
    super.key,
  });

  final eventsArr = <String>["Labyrinth Bar & Nightclub", "Second Bridge", "Komedia", "Opa", "Walcot House", "Uni of Bath (Campus)", "Other"];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: (eventsArr.length+1),
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return Container(
            margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Venues & Events",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Here are all current available events and venues: (tap BROWSE to see tickets being sold)",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                )
              ],
            ),
          );
        }
        else {
          var currentEvent = eventsArr[index-1];
          return Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    border: Border.all(color: Colors.white.withOpacity(0.3), width: 2),
                    // color: Color.fromARGB(255, 236, 236, 236),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(255, 255, 191, 96),
                        Color.fromARGB(255, 255, 174, 174),
                      ],
                    ),
                  ),
                  height: 100,
                  margin: EdgeInsets.fromLTRB(20, 20, 10, 0),
                  child: Center(child: Text('$currentEvent', style: TextStyle(fontWeight: FontWeight.bold))),
                ),
              ),
              /*
              Container(
                height: 100,
                width: 150,
                margin: EdgeInsets.fromLTRB(0, 20, 20, 0),
                child: Center(child: Text('BROWSE', style: TextStyle(fontWeight: FontWeight.bold))),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(color: Colors.white.withOpacity(0.7), width: 1),
                  // color: Color.fromARGB(255, 0, 174, 255),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(255, 136, 215, 252),
                      Color.fromARGB(255, 84, 199, 151),
                    ],
                  ),
                ),
              ),
              */

              Container(
                height: 100,
                width: 150,
                margin: const EdgeInsets.fromLTRB(0, 20, 20, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(color: Colors.white.withOpacity(0.3), width: 2),
                  // color: Color.fromARGB(255, 0, 174, 255),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(255, 136, 215, 252),
                      Color.fromARGB(255, 120, 247, 192),
                    ],
                  ),
                ),
                child: InkWell(
                  onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TicketSalePage(event: currentEvent)),
                  );
                  },
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Center(child: Text('BROWSE', style: TextStyle(fontWeight: FontWeight.bold))),
                )
              ),
            ],
          );
        }
      }
    );
  }
}

class TicketSalePage extends StatelessWidget {
  const TicketSalePage({super.key, required this.event});

  final String event;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tickets: $event", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

class SellPage extends StatelessWidget {
  const SellPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("Hi");
  }
}

class TicketsPage extends StatelessWidget {
  TicketsPage({super.key});

  // Note: would be good to have a character limit for event names, to prevent overflowing (note: this may be a different point depending on device too)
  // Assuming the list taken from the database is ordered correctly by date (ascending for upcoming, descending for past)
  final upcomingTickets = [["LOCA", "14/01/2026", "23"], ["Fishie's", "04/02/2026", "76"], ["CS MARIO KART SHOWDOWN", "05/02/2026", "15"]];
  final pastTickets = [["Baiana", "15/12/2025", "56"], ["Glam", "12/12/2025", "64"], ["Glam", "27/11/2025", "53"]];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: (upcomingTickets.length + pastTickets.length + 3),
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return Container(
            margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My Tickets",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  "View below any tickets you have stored on the app: (If you have received any free tickets from us, they will appear here)\n\nNOTE: Tap on a ticket to view it.",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                )
              ],
            ),
          );
        }
        else if (index == 1) {
          return Container(
            margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Text("Upcoming Tickets", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          );
        }
        else if (index > 1 && index < upcomingTickets.length + 2) {
          return UpcomingTicketContainer(upcomingTickets: upcomingTickets, index: index);
        }
        else if (index == upcomingTickets.length + 2) {
          return Container(
            margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Text("Past Tickets", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          );
        }
        else {
          return PastTicketContainer(pastTickets: pastTickets, upcomingTickets: upcomingTickets, index: index);
        }
      }
    );
  }
}

class UpcomingTicketContainer extends StatelessWidget {
  const UpcomingTicketContainer({
    super.key,
    required this.upcomingTickets,
    required this.index,
  });

  final List<List<String>> upcomingTickets;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: Colors.white.withOpacity(0.3), width: 2),
            // color: Color.fromARGB(255, 0, 174, 255),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 136, 215, 252),
                Color.fromARGB(255, 120, 247, 192),
              ],
            ),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TicketOpenPage(ticket: upcomingTickets[index-2])),
          );
        },
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.all(15),
                child: Text(
                  upcomingTickets[index - 2][0],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                upcomingTickets[index - 2][1],
                style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 12),
              ),
            ),
          ],
        ),
      )
    );
  }
}

class PastTicketContainer extends StatelessWidget {
  const PastTicketContainer({
    super.key,
    required this.pastTickets,
    required this.upcomingTickets,
    required this.index,
  });

  final List<List<String>> pastTickets;
  final List<List<String>> upcomingTickets;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: Colors.white.withOpacity(0.3), width: 2),
            color: Color.fromARGB(255, 203, 222, 230),
            /*
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 217, 151, 65),
                Color.fromARGB(255, 226, 197, 123),
              ],
            ),
            */
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TicketOpenPage(ticket: pastTickets[index - upcomingTickets.length - 3])),
          );
        },
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.all(15),
                child: Text(
                  pastTickets[index - upcomingTickets.length - 3][0],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                pastTickets[index - upcomingTickets.length - 3][1],
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 12),
              ),
            ),
          ],
        ),
      )
    );
  }
}

class TicketOpenPage extends StatelessWidget {
  TicketOpenPage({super.key, this.ticket});

  final ticket;

  // can use this to decide colour for subtext below QR code based on whether the event is in the past or not
  // var subContainerGradientColours;

  // var qrBytes = utf8.encode("${ticket[0]} (${ticket[1]})")
  // final qrHash = sha256.convert()

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${ticket[0]} (${ticket[1]})", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            /*
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 18, 57, 77),
                  Color.fromARGB(255, 17, 59, 41),
                ],
              ),
              */
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.all(30),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color.fromARGB(255, 26, 26, 26), width: 3),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: QrImageView(
                    // data: sha256.convert(utf8.encode("${ticket[0]} ${ticket[1]} ${ticket[2]}")).toString(),
                    data: "${ticket[0]} ${ticket[1]} ${ticket[2]}",
                    version: QrVersions.auto,
                    size: 350.0,
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          border: Border.all(color: Colors.white.withOpacity(0.3), width: 2),
                          color: Color.fromARGB(255, 255, 255, 255),
                          /*
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromARGB(255, 186, 136, 252),
                              Color.fromARGB(255, 247, 120, 120),
                            ],
                          ),
                          */
                        ),
                        child: Text("Event: ${ticket[0]}\nDate: ${ticket[1]}\nName: MIKAEL KYRIAKOS", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                      ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}