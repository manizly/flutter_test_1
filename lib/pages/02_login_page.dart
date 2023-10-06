import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk_talk.dart';
import 'package:url_strategy/url_strategy.dart';
import '06_pw_finding.dart';
import '05_info_put_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  KakaoSdk.init(
    nativeAppKey: 'a245df5e43c6cdb8cc71c835aba579cb',
    javaScriptAppKey: '2d952d46dcc0df009a31edc7dd3c1cd9',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'LoginPage',
        home: LoginPage(),
      );
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(backgroundColor: Colors.white, elevation: 0.0),
        body: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            SizedBox(
                width: 300, child: Image.asset('assets/images/frame11.png')),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const TextField(
                    style: TextStyle(
                        color: Color(0xFF323232),
                        fontSize: 15,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 2,
                        letterSpacing: -1),
                    decoration: InputDecoration(labelText: '이메일'),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const TextField(
                    style: TextStyle(
                        color: Color(0xFF323232),
                        fontSize: 15,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 2,
                        letterSpacing: -1),
                    decoration: InputDecoration(labelText: '비밀번호'),
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  const SizedBox(height: 10.0),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PassWordFinding()),
                      );
                    },
                    child: const Align(
                      alignment: Alignment.centerRight,
                      child: Text('비밀번호 를 잊으셨나요?',
                          style: TextStyle(
                              color: Color(0xFF323232),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              letterSpacing: -1)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 338,
              height: 50,
              child: DecoratedBox(
                decoration: const BoxDecoration(color: Colors.red),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xFFFF5722)),
                  ),
                  onPressed: null,
                  child: const Text(
                    '로그인',
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
            SizedBox(
              width: 389,
              child: Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                        text: '계정이 없으신가요?   ',
                        style: TextStyle(
                            color: Color(0xFF323232),
                            fontSize: 15,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            letterSpacing: -1)),
                    WidgetSpan(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const InfoPutPage()));
                        },
                        child: const Text(
                          '회원가입',
                          style: TextStyle(
                              color: Color(0xFFFF5722),
                              fontSize: 15,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              decoration: TextDecoration.underline,
                              letterSpacing: -1),
                        ),
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 338,
              height: 50,
              child: ElevatedButton(
                onPressed: _loginWithKakao,
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xFFFEE500)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  )),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 30,
                      height: 30,
                      child: Image.asset(
                        'assets/images/kakao_logo.png',
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text('카카오톡으로 3초만에 로그인하기',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.center),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 338,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Add the action to be executed when the button is pressed
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  )),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 30,
                      height: 30,
                      child: Image.asset(
                        'assets/images/apple_logo.png',
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text('Apple로 로그인하기',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.center),
                  ],
                ),
              ),
            )
          ],
        ),
      );

  Future<void> _loginWithKakao() async {
    final isInstalled = await isKakaoTalkInstalled();
    print(isInstalled);
    try {
      final token = isInstalled
          ? await UserApi.instance.loginWithKakaoTalk()
          : await UserApi.instance.loginWithKakaoAccount();
      print('로그인 성공 ${token.accessToken}');
    } catch (error) {
      ('로그인 실패 $error');
    }
  }
}
