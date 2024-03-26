import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Button Tap";

    return MaterialApp(
      title: title,
      home: MyHomePg(title: title),
    );
  }
}

class MyHomePg extends StatelessWidget {
  final String title;
  const MyHomePg({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: MyBtn(),
    );
  }
}

class MyBtn extends StatelessWidget {
  const MyBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        const snack = SnackBar(content: Text("I was tapped"));

        ScaffoldMessenger.of(context).showSnackBar(snack);
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.blue[300], borderRadius: BorderRadius.circular(8)),
        child: const Text('Tap ME'),
      ),
    );
  }
}
