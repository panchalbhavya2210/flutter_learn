import 'package:flutter/material.dart';
import 'package:hello_world/semester/sem4.dart';
import 'package:hello_world/semester/sem5.dart';
import 'package:hello_world/semester/sem6.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        // '/': (context) => const ColumnLayoutScreen(),
        '/sem4': (context) => const CardDisplayFour(),
        '/sem5': (context) => const CardDisplayFive(),
        '/sem6': (context) => const CardDisplay()
      },
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
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 200,
                child: Container(
                  alignment: Alignment.bottomLeft,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
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
              const SemCards(
                  semName: "Semseter 4",
                  semIcon: Icon(Icons.book),
                  semTap: '/sem4'),
              const SemCards(
                  semName: "Semester 5",
                  semIcon: Icon(Icons.book),
                  semTap: '/sem5'),
              const SemCards(
                  semName: "Semester 6",
                  semIcon: Icon(Icons.book),
                  semTap: '/sem6')
            ],
          ),
        ),
      ),
    );
  }
}

class SemCards extends StatelessWidget {
  const SemCards(
      {super.key,
      required this.semName,
      required this.semIcon,
      required this.semTap});

  final String semName;
  final Icon semIcon;
  final String semTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: SizedBox(
        width: double.infinity,
        child: ListView(
          shrinkWrap: true,
          children: [
            ListTile(
              leading: semIcon,
              title: Text(semName),
              onTap: () => {Navigator.pushNamed(context, semTap)},
            )
          ],
        ),
      ),
    );
  }
}
