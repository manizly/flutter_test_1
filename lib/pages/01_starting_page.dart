// 1. 시작화면
// https://www.figma.com/file/rb4CsYrvbPUbJ7HVFeCdA6/MANIZLY-MVP-Application?type=design&node-id=0-1&mode=design&t=5LsWzMM6gg4ybT0U-0
//

import 'package:flutter/material.dart';
import 'package:flutter_app/pages/02_login_page.dart';

void main() {
  runApp(const StartingPage());
}

class StartingPage extends StatelessWidget {
  const StartingPage({Key? key})
      : super(key: key); // Corrected the key constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: const StartingPageBody(), // Set StartingPageBody as the home widget
    );
  }
}

class StartingPageBody extends StatelessWidget {
  const StartingPageBody({Key? key})
      : super(key: key); // Corrected the key constructor

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginPage()));
      },
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
          ),
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 300,
                    height: 150,
                    child: FittedBox(
                        child: Image.asset('assets/images/frame11.png')),
                  ),
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  SizedBox(
                    width: 551,
                    height: 476,
                    child: FittedBox(
                        fit: BoxFit.fitWidth, // 가로 길이에 맞추도록 설정
                        child: Image.asset('assets/images/0829_fixed.png')),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
