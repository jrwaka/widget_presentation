import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "SizedBox and ConstrainedBox Demo",
            style: TextStyle(fontSize: 20),
          ),
          backgroundColor: Colors.amber,
        ),

        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                width: 250,
                height: 250,
                child: Container(
                  width: 200,
                  color: Colors.blue,
                  child: Center(
                    child: Text("SizedBox", style: TextStyle(fontSize: 24)),
                  ),
                ),
              ),

              SizedBox(height: 20),

              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 250,
                  maxWidth: 250,
                  minHeight: 100,
                  minWidth: 100,
                ),
                child: Container(
                  width: 200,
                  height: 250,
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      "ConstrainedBox",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 30),

              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 250,
                  maxWidth: 250,
                  minHeight: 100,
                  minWidth: 100,
                ),
                child: SizedBox(
                  height: 200,
                  width: 250,
                  child: Container(
                    color: Colors.amber,
                    child: Center(
                      child: Text(
                        "ConstrainedBox + SizedBox",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
