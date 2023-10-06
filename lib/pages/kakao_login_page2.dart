// import 'package:flutter/material.dart';
// import 'package:kakao_flutter_sdk/kakao_flutter_sdk_talk.dart'; // Corrected the import

// void main() {
//   var KakaoContext;
//   KakaoContext.clientId = "a245df5e43c6cdb8cc71c835aba579cb";
//   runApp(const MoilkApp());
// }

// class MoilkApp extends StatefulWidget {
//   const MoilkApp({Key? key}) : super(key: key);

//   @override
//   _MoilkAppState createState() => _MoilkAppState();
// }

// class _MoilkAppState extends State<MoilkApp> {
//   bool _isInstalled = true;

//   @override
//   void initState() {
//     super.initState();
//     _initKaKaoTalkInstalled();
//   }

//   _initKaKaoTalkInstalled() async {
//     final installed = await isKakaoTalkInstalled();
//     setState(() {
//       _isInstalled = installed;
//     });
//   }

//   void loginButtonClicked() async {
//     try {
//       final authCode = _isInstalled
//           ? await AuthCodeClient.instance.requestWithTalk()
//           : await AuthCodeClient.instance.request(); // via browser
//       var token = await AuthApi.instance.issueAccessToken(authCode);

//       var tokenManager = DefaultTokenManager();

//       tokenManager.setToken(token);
//       // Store access token in TokenManager for future API requests.
//     } catch (e) {
//       // some error happened during the course of user login... deal with it.
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     // TODO: Return your widget tree here
//     return MaterialApp(
//         // ... your app's widget tree ...
//         );
//   }
// }
