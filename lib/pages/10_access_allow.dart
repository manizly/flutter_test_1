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
          title: const Text('접근 권한 허용',
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
                      buildContainer(350, 130, Colors.white, 10,
                          child: const FormFields()),
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
                text: '매니즐리는',
                style:
                    TextStyle(height: 1.4, letterSpacing: 0, wordSpacing: 3.0)),
            TextSpan(
                text: ' 알림을 기반으로 하는 서비스',
                style: TextStyle(
                    color: Color(0xFFFF5722), fontWeight: FontWeight.w700)),
            TextSpan(text: '입니다.\n', style: TextStyle(height: 1.4)),
            TextSpan(text: '앱 사용을 위해', style: TextStyle(height: 1.4)),
            TextSpan(
                text: ' 접근 권한 허용',
                style: TextStyle(
                    color: Color(0xFFFF5722), fontWeight: FontWeight.w700)),
            TextSpan(text: '을 부탁드릴게요 🙏', style: TextStyle(height: 1.4)),
          ],
        ),
      ),
    );
  }
}

class FormFields extends StatelessWidget {
  const FormFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '🔔 알림 ',
                      style: TextStyle(
                        color: Color(0xFF323232),
                        fontSize: 15,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0,
                        letterSpacing: -1,
                      ),
                    ),
                    TextSpan(
                      text: '(필수):',
                      style: TextStyle(
                        color: Color(0xFF969393),
                        fontSize: 11,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                        letterSpacing: -1,
                      ),
                    ),
                  ],
                ),
              ),
              Text.rich(
                TextSpan(
                  text: ' 알림 메시지 발송',
                  style: TextStyle(
                    color: Color(0xFF969393),
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 1.7,
                    letterSpacing: -1,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 338,
            height: 40,
            child: DecoratedBox(
              decoration: BoxDecoration(color: Color(0xFFFF5722), boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 1))
              ]),
              child: ElevatedButton(
                style: ButtonStyle(
                    // backgroundColor:Color(0xFFFF5722),
                    ),
                onPressed: null,
                child: Text(
                  '설정하기',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Field extends StatelessWidget {
  final String label;
  final String hint;
  final String subText;

  const Field(
      {Key? key,
      required this.label,
      required this.hint,
      required this.subText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(label,
                style: const TextStyle(
                    color: Color(0xFF323232),
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700)),
            const SizedBox(width: 5, height: 20),
            Text(subText,
                style: const TextStyle(
                    color: Color(0xFFFF5722),
                    fontSize: 10,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400)),
          ],
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: SizedBox(
            width: 300,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0)
                ],
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextField(
                controller: null,
                style: TextStyle(color: Colors.grey[200]),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hint,
                    contentPadding: const EdgeInsets.all(10)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
