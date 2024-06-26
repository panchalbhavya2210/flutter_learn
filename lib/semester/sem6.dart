import "package:flutter/material.dart";
import "package:hello_world/semester/customcard.dart";

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
                      title: "Artificial Intelligence",
                      imgUrl: "images/ai.png",
                      fileUrl: [
                        'https://drive.proton.me/urls/V782QCAD1C#0naJAGtRpmRK',
                        'https://drive.proton.me/urls/CDY5FQCYTR#cBvOq4HZa8IQ'
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    width: double.infinity,
                    child: const CustomCard(
                      title: "Python Programming",
                      imgUrl: "images/py.png",
                      fileUrl: [
                        'https://drive.proton.me/urls/X9TVGRJ19M#usRkZCUlQP82',
                        'https://drive.proton.me/urls/E1DQ3QW5EM#OvFDymqW22a9'
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    width: double.infinity,
                    child: const CustomCard(
                      title: "PHP",
                      imgUrl: "images/PHP.png",
                      fileUrl: [
                        'https://drive.proton.me/urls/MBSVK83T94#txrm3WKmd1pJ'
                      ],
                    ),
                  ),

                  // Container(
                  //   margin: EdgeInsets.only(bottom: 10),
                  //   width: double.infinity,
                  //   child: CustomCard(title: "PHP", imgUrl: "images/lake.jpg"),
                  // ),
                  // Container(
                  //   margin: EdgeInsets.only(bottom: 10),
                  //   width: double.infinity,
                  //   child: CustomCard(title: "FGK", imgUrl: "images/lake.jpg"),
                  // ),
                ],
              ),
            ),
          ),
        ));
  }
}
