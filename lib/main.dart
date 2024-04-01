import 'package:flutter/material.dart';

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
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    width: double.infinity,
                    child:
                        CustomCard(title: "Ocean", imgUrl: "images/lake.jpg"),
                  ),
                  // Container(
                  //   margin: EdgeInsets.only(bottom: 10),
                  //   width: double.infinity,
                  //   child: CustomCard(title: 'title'),
                  // ),
                  // Container(
                  //   margin: EdgeInsets.only(bottom: 10),
                  //   width: double.infinity,
                  //   child: CustomCard(title: 'title'),
                  // ),
                  // Container(
                  //   margin: EdgeInsets.only(bottom: 10),
                  //   width: double.infinity,
                  //   child: CustomCard(title: 'title'),
                  // ),
                ],
              ),
            ),
          ),
        ));
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.title, required this.imgUrl});

  final String title;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      color: Colors.amber,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(imgUrl),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 26,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 8),
                child: Icon(Icons.arrow_circle_right_outlined),
              ),
            ],
          )
        ],
      ),
    );
  }
}
