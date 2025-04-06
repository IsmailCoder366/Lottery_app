import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

void table(int x) {
  for (int i = 0; i <= 10; i++) {
    print("$x * $i = ${x * i}");
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String tableText = "";

  @override
  void initState() {
    super.initState();
    generateTable(2); // Generate table of 2 when the app starts
  }

  void generateTable(int x) {
    String result = "";
    for (int i = 0; i <= 10; i++) {
      result += "$x * $i = ${x * i}\n";
    }
    setState(() {
      tableText = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  tableText, // Display multiplication table
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
