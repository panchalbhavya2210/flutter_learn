import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Flutter Tutorial',
      home: TutorialHome(),
    ),
  );
}

// class TutorialHome extends StatelessWidget {
//   const TutorialHome({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Scaffold is a layout for
//     // the major Material Components.
//     return Scaffold(
//       appBar: AppBar(
//         leading: const IconButton(
//           icon: Icon(Icons.menu),
//           tooltip: 'Navigation menu',
//           onPressed: null,
//         ),
//         title: const Text('My First App'),
//         actions: const [
//           IconButton(
//             icon: Icon(Icons.search),
//             tooltip: 'Search',
//             onPressed: null,
//           ),
//         ],
//       ),
//       // body is the majority of the screen.
//       body: const Center(
//         child: Text('Hello, world! Bhavya Panchal'),
//       ),
//       floatingActionButton: const FloatingActionButton(
//         tooltip: 'Add', // used by assistive technologies
//         onPressed: null,
//         child: Icon(Icons.access_time_filled),
//       ),
//     );
//   }
// }

class TutorialHome extends StatelessWidget {
  const TutorialHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(onPressed: null, icon: Icon(Icons.menu)),
        title: const Text('Flutter Tutorial'),
        centerTitle: true,
        shadowColor: Colors.black,
        elevation: double.parse('2.0'),
      ),
      body: const Column(
        children: [Text("hello world")],
      ),
    );
  }
}
