import 'package:flutter/material.dart';

void main() => runApp(const InfoPutPage());

class InfoPutPage extends StatelessWidget {
  const InfoPutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: const Text('회원 가입',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
          leading: const BackButton(color: Colors.black),
        ),
        body: Container(
          color: const Color(0xFFF0F0F0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment
                .spaceBetween, // This will push the button to the bottom
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      buildContainer(350, 80, Colors.white, 10,
                          child: const CenteredRichText()),
                      buildContainer(350, 250, Colors.white, 10,
                          child: const TeamCreation()),
                      buildContainer(350, 250, Colors.white, 10,
                          child: const TeamJoin()),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildContainer(
      double width, double height, Color color, double borderRadius,
      {required Widget child}) {
    return Container(
      width: width,
      height: height,
      margin: const EdgeInsets.all(20.0),
      decoration: ShapeDecoration(
        color: color,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius)),
        shadows: const [
          BoxShadow(
              color: Color(0x26000000), blurRadius: 4, offset: Offset(0, 4))
        ],
      ),
      child: child,
    );
  }
}

class CenteredRichText extends StatelessWidget {
  const CenteredRichText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          style: TextStyle(
              fontSize: 14.5,
              fontWeight: FontWeight.w400,
              height: 1,
              letterSpacing: 0,
              color: Colors.black),
          children: <TextSpan>[
            TextSpan(
                text: '매니즐리에 오신걸 환영해요 😄 \n',
                style:
                    TextStyle(height: 1.4, letterSpacing: 0, wordSpacing: 3.0)),
            TextSpan(
                text: ' 해당하는 가입 목적을 선택',
                style: TextStyle(
                    color: Color(0xFFFF5722), fontWeight: FontWeight.w700)),
            TextSpan(text: '해주시기 바랍니다.', style: TextStyle(height: 1.4)),
          ],
        ),
      ),
    );
  }
}

class TeamCreation extends StatelessWidget {
  const TeamCreation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/team1.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            '팀 생성',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF323232),
              fontSize: 35,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              height: 0,
              letterSpacing: -0.33,
            ),
          ),
        ],
      ),
    );
  }
}

class TeamJoin extends StatelessWidget {
  const TeamJoin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 5,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              style: TextStyle(
                fontSize: 14.5,
                fontWeight: FontWeight.w400,
                height: 1,
                letterSpacing: 0,
                color: Colors.black,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: '커뮤니티에서',
                  style: TextStyle(
                      height: 1.4, letterSpacing: 0, wordSpacing: 3.0),
                ),
                TextSpan(
                  text: ' 활동',
                  style: TextStyle(
                    color: Color(0xFFFF5722),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: '하고 계신 회원인가요?',
                  style: TextStyle(height: 1.4),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/team2.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            '팀 가입',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF323232),
              fontSize: 35,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              height:
                  1, // Consider changing this to a value greater than 0 or null for default height
              letterSpacing: -0.33,
            ),
          ),
        ],
      ),
    );
  }
}
