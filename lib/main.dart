import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String apptitle = "Form Creation";
    return MaterialApp(
      title: apptitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(apptitle),
        ),
        body: const MyForm(),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyCstForm();
}

class _MyCstForm extends State<MyForm> {
  final myCnt = TextEditingController();

  @override
  void dispose() {
    myCnt.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filed"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: TextField(
          autocorrect: true,
          controller: myCnt,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Text(myCnt.text),
                );
              });
        },
        tooltip: 'Show Me Value',
        child: const Icon(Icons.text_fields),
      ),
    );
  }
}
