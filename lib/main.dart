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
                    child: const CustomCard(
                        title: "Python Programming", imgUrl: "images/lake.jpg"),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    width: double.infinity,
                    child: const CustomCard(
                        title: "Artificial Intelligence",
                        imgUrl: "images/lake.jpg"),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    width: double.infinity,
                    child: CustomCard(title: "PHP", imgUrl: "images/lake.jpg"),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    width: double.infinity,
                    child: CustomCard(title: "FGK", imgUrl: "images/lake.jpg"),
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
