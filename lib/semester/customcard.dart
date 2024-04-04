import "package:flutter/material.dart";
import "package:url_launcher/url_launcher.dart";

class CustomCard extends StatelessWidget {
  const CustomCard(
      {super.key,
      required this.title,
      required this.imgUrl,
      required this.fileUrl});

  final String title;
  final String imgUrl;
  final List<String> fileUrl;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      radius: double.infinity,
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Available Assignments'),
                content: setupAlertDialoadContainer(),
              );
            });
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        color: Colors.white70,
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

  Widget setupAlertDialoadContainer() {
    return SizedBox(
      height: 300.0, // Change as per your requirement
      width: 300.0, // Change as per your requirement
      child: ListView.builder(
        itemCount: fileUrl.length,
        itemBuilder: (context, index) {
          final url = fileUrl[index];
          return ListTile(
            leading: Icon(Icons.file_download_outlined),
            title: Text("Assignment ${index + 1}"),
            onTap: () => _launchUrl(url),
          );
        },
      ),
    );
  }
}

_launchUrl(String url) async {
  // Uri.encodeComponent(url);
  final Uri uri = Uri.parse(url);
  if (!await launchUrl(uri)) {
    throw Exception('Could not launch');
  }
}
