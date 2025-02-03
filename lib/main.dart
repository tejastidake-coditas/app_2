import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              "App 2",
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            leading: Icon(Icons.menu),
            actions: [
              Icon(Icons.person),
              Icon(Icons.logout),
            ],
            backgroundColor: Colors.cyan,
          ),
          body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("States & Management (Stateless & Stateful)", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  Text("Clicks: $count", style: TextStyle(fontSize: 18),),
            TextButton(child: Text("Reset", style: TextStyle(fontSize: 22)), onPressed: () {
              setState(() {
                count = 0;
              });
            }
            )]),
          ),
          floatingActionButton: FloatingActionButton(
              child: Text('+'),  onPressed: () {
            setState(() {
              count++;
            }
            );
          }),
        ));
  }
}
