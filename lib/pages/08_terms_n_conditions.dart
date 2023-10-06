import 'package:flutter/material.dart';

void main() => runApp(const TermsPage());

class TermsPage extends StatelessWidget {
  const TermsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: const Text('약관 동의',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
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
                    mainAxisAlignment: MainAxisAlignment
                        .spaceBetween, // This will push the button to the bottom
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      buildContainer(350, 80, Colors.white, 10,
                          child: const CenteredRichText()),
                      buildContainer(350, 152, Colors.white, 10,
                          child: const CenterContents()),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 350,
                        height: 36,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: const Color(0xFFFF5722),
                            borderRadius: BorderRadius.circular(
                                5.0), // Added to match the button's border radius
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: Offset(0, 1),
                              )
                            ],
                          ),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.transparent), // Set to transparent
                              shadowColor: MaterialStateProperty.all(
                                  Colors.transparent), // Set to transparent
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                            ),
                            onPressed:
                                null, // You might want to replace null with a function to handle button press
                            child: const Text(
                              '전체 동의(선택 항목 포함)',
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
                ),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.all(20.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFF323232),
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                  ),
                  onPressed: () {
                    // Handle button press
                  },
                  child: const Text(
                    '확인',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
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
                text: '고객님의 소중한 정보를 보호하기 위해\n',
                style:
                    TextStyle(height: 1.2, letterSpacing: 0, wordSpacing: 3.0)),
            TextSpan(
                text: '서비스 약관에 대한 동의',
                style: TextStyle(
                    color: Color(0xFFFF5722), fontWeight: FontWeight.w700)),
            TextSpan(text: '가 필요합니다.', style: TextStyle(height: 1.5)),
          ],
        ),
      ),
    );
  }
}

class CenterContents extends StatelessWidget {
  const CenterContents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Transform.scale(
                scale: 1,
                child: Transform.translate(
                  offset:
                      const Offset(1.0, 0.0), // Added the missing comma here
                  child: Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          5), // Adjust the radius to your liking
                    ),
                    value:
                        false, // You can manage this value dynamically using a variable
                    onChanged: (value) {
                      // Handle checkbox state changes
                    },
                  ),
                ),
              ),
              Expanded(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: const TextSpan(
                    style: TextStyle(
                        fontSize: 14.5,
                        fontWeight: FontWeight.w400,
                        height: 1,
                        letterSpacing: 0,
                        color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                          text: '서비스 이용약관 (필수)',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              height: 1.2,
                              letterSpacing: 0,
                              wordSpacing: 3.0)),
                      TextSpan(
                          text: '  [상세보기]',
                          style: TextStyle(
                            color: Color(0xFF7D7D7D),
                            fontSize: 10,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w300,
                            height: 0.30,
                            letterSpacing: -0.33,
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Transform.scale(
                scale: 1,
                child: Transform.translate(
                  offset:
                      const Offset(1.0, 0.0), // Added the missing comma here
                  child: Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          5), // Adjust the radius to your liking
                    ),
                    value:
                        false, // You can manage this value dynamically using a variable
                    onChanged: (value) {
                      // Handle checkbox state changes
                    },
                  ),
                ),
              ),
              Expanded(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: const TextSpan(
                    style: TextStyle(
                        fontSize: 14.5,
                        fontWeight: FontWeight.w400,
                        height: 1,
                        letterSpacing: 0,
                        color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                          text: '개인 정보 처리 방침 (필수)',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              height: 1.2,
                              letterSpacing: 0,
                              wordSpacing: 3.0)),
                      TextSpan(
                          text: '  [상세보기]',
                          style: TextStyle(
                            color: Color(0xFF7D7D7D),
                            fontSize: 10,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w300,
                            height: 0.30,
                            letterSpacing: -0.33,
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Transform.scale(
                scale: 1,
                child: Transform.translate(
                  offset:
                      const Offset(1.0, 0.0), // Added the missing comma here
                  child: Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          5), // Adjust the radius to your liking
                    ),
                    value:
                        false, // You can manage this value dynamically using a variable
                    onChanged: (value) {
                      // Handle checkbox state changes
                    },
                  ),
                ),
              ),
              Expanded(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: const TextSpan(
                    style: TextStyle(
                        fontSize: 14.5,
                        fontWeight: FontWeight.w400,
                        height: 1,
                        letterSpacing: 0,
                        color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                          text: '마케팅 정보 수신 및 활용 동의 (선택)',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              height: 1.2,
                              letterSpacing: 0,
                              wordSpacing: 3.0)),
                      TextSpan(
                          text: '  [상세보기]',
                          style: TextStyle(
                            color: Color(0xFF7D7D7D),
                            fontSize: 10,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w300,
                            height: 0.30,
                            letterSpacing: -0.33,
                          )),
                    ],
                  ),
                ),
              ),
            ],
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
