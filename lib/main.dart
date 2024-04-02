import 'package:flutter/material.dart';
import 'package:hello_world/semester/sem6.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ColumnLayoutScreen(),
    ),
  );
}

class ColumnLayoutScreen extends StatelessWidget {
  const ColumnLayoutScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: const Text("My Flutter App"),
        ),
        body: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Center(
              child: ElevatedButton(
                child: const Text('go sem6'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CardDisplay()));
                },
              ),
            )));
  }
}
