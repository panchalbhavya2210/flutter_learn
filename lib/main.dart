import 'package:flutter/material.dart';
import 'package:hello_world/semester/sem6.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.red, fontFamily: 'DMSans'),
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
        title: const Text("My Flutter App"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 200,
                child: Container(
                  alignment: Alignment.bottomLeft,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(0),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      color: Colors.cyan),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "BCA Assignments",
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
              ),
              SemCards()
            ],
          ),
        ),
      ),
    );
  }
}

class SemCards extends StatelessWidget {
  const SemCards({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        4,
        (index) => ListTile(
          leading: Icon(Icons.abc),
        ),
      ),
    );
  }
}
