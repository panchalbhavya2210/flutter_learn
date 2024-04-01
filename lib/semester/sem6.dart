import "package:flutter/material.dart";

class SemSix extends StatelessWidget {
  const SemSix({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              child: CustomCard(title: "a"),
            )
          ],
        ),
      ),
    );
  }
}

s