import 'package:flutter/material.dart';
import 'package:flutter_app/pages/08_terms_n_conditions.dart';

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
          title: const Text('가입 정보 입력',
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
                    children: [
                      buildContainer(350, 80, Colors.white, 10,
                          child: const CenteredRichText()),
                      buildContainer(350, 357, Colors.white, 10,
                          child: const FormFields()),
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
                    // Check if the user satisfies all the password-finding requirements
                    bool requirementsSatisfied =
                        true; // This is just a placeholder. Replace with your actual check.

                    if (requirementsSatisfied) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const TermsPage()), // Assuming PwResetPage is the name of the widget in pw_reset.dart
                      );
                      // ignore: dead_code
                    } else {
                      // Show a message or alert to the user if the requirements are not satisfied
                    }
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
              fontSize: 16,
              fontWeight: FontWeight.w400,
              height: 1,
              letterSpacing: 0,
              color: Colors.black),
          children: <TextSpan>[
            TextSpan(
                text: '매니즐리를 찾아주셔서 감사해요 😇\n',
                style:
                    TextStyle(height: 1.2, letterSpacing: 0, wordSpacing: 3.0)),
            TextSpan(
                text: '가입정보',
                style: TextStyle(
                    color: Color(0xFFFF5722), fontWeight: FontWeight.w700)),
            TextSpan(text: '를 아래에 입력해주시길 바랍니다.', style: TextStyle(height: 1.5)),
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
          Field(label: '이름', hint: 'ex) 김OO', subText: '2글자 이상 작성해주세요.'),
          SizedBox(height: 10),
          Field(
              label: '이메일',
              hint: 'ex) manizly@manizly.com',
              subText: '유효한 이메일 형식이 아니에요.'),
          SizedBox(height: 10),
          Field(
              label: '비밀번호 입력',
              hint: '8자 이상, 영문과 숫자를 조합 필수',
              subText: '8자 이상, 영문과 숫자를 조합해 작성해주세요.'),
          SizedBox(height: 10),
          Field(
              label: '비밀번호 재입력',
              hint: 'ex) manizly@manizly.com',
              subText: '8자 이상, 영문과 숫자를 조합 필수'),
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
