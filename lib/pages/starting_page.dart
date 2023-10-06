import 'package:flutter/material.dart';

void main() {
  runApp(const StartingPage());
}

class StartingPage extends StatelessWidget {
  const StartingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('mainpage'),
      ),
    );
  }
}
//  return Column(
//       children: [
//         Container(
//           width: 551,
//           height: 476,
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: NetworkImage("https://via.placeholder.com/551x476"),
//               fit: BoxFit.fill,
//             ),
//           ),
//         ),
//       ],
//     );
