import "package:flutter/material.dart";

class CardDisplay extends StatelessWidget {
  const CardDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
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
    return InkWell(
      radius: double.infinity,
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Tap'),
        ));
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        color: Colors.white10,
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
      ),
    );
  }
}
