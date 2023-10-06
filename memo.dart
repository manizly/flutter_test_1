// 회원가입시 Form 설정하는 위젯 
// 기능 다 있음


// Form(
//                   key: formKey,
//                   child: Padding(
//                     padding: const EdgeInsets.only(top: 200, left: 20),
//                     child: Column(
//                       children: [
//                         Container(
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.grey.withOpacity(0.5),
//                                 spreadRadius: 1,
//                                 blurRadius: 3,
//                                 offset: Offset(0, 2),
//                               ),
//                             ],
//                             borderRadius: BorderRadius.circular(5),
//                           ),
//                         ),
//                         renderTextFormField(
//                           label: '이름',
//                           onSaved: (val) {},
//                           validator: (val) {
//                             if (val.length < 1) {
//                               return '이름은 필수사항입니다.';
//                             }

//                             if (val.length < 2) {
//                               return '이름은 두글자 이상 입력 해주셔야합니다.';
//                             }

//                             return null;
//                           },
//                         ),
//                         renderTextFormField(
//                           label: '이메일',
//                           onSaved: (val) {},
//                           validator: (val) {
//                             if (val.length < 1) {
//                               return '이메일은 필수사항입니다.';
//                             }

//                             if (!RegExp(
//                                     r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
//                                 .hasMatch(val)) {
//                               return '잘못된 이메일 형식입니다.';
//                             }

//                             return null;
//                           },
//                         ),
//                         renderTextFormField(
//                           label: '비밀번호',
//                           onSaved: (val) {},
//                           validator: (val) {
//                             if (val.length < 1) {
//                               return '비밀번호는 필수사항입니다.';
//                             }

//                             if (val.length < 8) {
//                               return '8자 이상 입력해주세요!';
//                             }
//                             return null;
//                           },
//                         ),
//                         renderTextFormField(
//                           label: '주소',
//                           onSaved: (val) {},
//                           validator: (val) {
//                             if (val.length < 1) {
//                               return '주소는 필수사항입니다.';
//                             }
//                             return null;
//                           },
//                         ),
//                         renderTextFormField(
//                           label: '닉네임',
//                           onSaved: (val) {},
//                           validator: (val) {
//                             if (val.length < 1) {
//                               return '닉네임은 필수사항입니다.';
//                             }
//                             if (val.length < 8) {
//                               return '닉네임은 8자 이상 입력해주세요!';
//                             }
//                             return null;
//                           },
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),




/// 하늘님 코드
/// 
/// body: SingleChildScrollView(
      //     child: Column(children: [
      //   SizedBox(
      //     height: 30,
      //   ),
      //   Center(
      //     child: Container(
      //       width: MediaQuery.of(context).size.width - 40,
      //       height: 80,
      //       decoration: ShapeDecoration(
      //           color: Colors.white,
      //           shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(10)),
      //           shadows: [
      //             BoxShadow(
      //                 color: Color(0x26000000),
      //                 blurRadius: 4,
      //                 offset: Offset(0, 4),
      //                 spreadRadius: 0)
      //           ]),
      //     ),
      //   ),
      //   SizedBox(height: 30),
      //   Text('개인 이미지',
      //       textAlign: TextAlign.center,
      //       style: TextStyle(
      //           color: Color(0xFF323232),
      //           fontSize: 15,
      //           fontFamily: 'Inter',
      //           fontWeight: FontWeight.bold,
      //           height: 0,
      //           letterSpacing: -1)),
      //   // SizedBox(height: 10),

      //   Container(
      //     width: 200,
      //     height: 200,
      //     child: IconButton(
      //       icon: Icon(
      //         Icons.account_circle,
      //         size: 150,
      //       ),
      //       onPressed: () {
      //         print('profile clicked!');
      //       },
      //     ),
      //   ),

      //   // GestureDetector(
      //   //   onTap: () {},
      //   //   constraints: BoxConstraints(
      //   //       maxHeight: MediaQuery.of(context).size.height,
      //   //       minWidth: MediaQuery.of(context).size.width),
      //   //   child: Icon(Icons.account_circle, size: imageSize),

      //   // ),
      //   // SizedBox(
      //   //   height: 14,
      //   // ),

      //   Container(
      //     width: MediaQuery.of(context).size.width - 40,
      //     height: MediaQuery.of(context).size.height - 400,
      //     decoration: ShapeDecoration(
      //         color: Colors.white,
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(10)),
      //         shadows: [
      //           BoxShadow(
      //               color: Color(0x26000000),
      //               blurRadius: 4,
      //               offset: Offset(0, 4),
      //               spreadRadius: 0)
      //         ]),
      //     child: Stack(
      //       children: [
      //         Positioned(
      //           left: 30,

      //           // right: 0,
      //           top: 35,
      //           child: Align(
      //             child: Text(
      //               '이름',
      //               style: TextStyle(
      //                   fontSize: 15,
      //                   fontWeight: FontWeight.bold,
      //                   letterSpacing: -1),
      //             ),
      //           ),
      //         ),
      //         Positioned(
      //           left: 30,
      //           right: 30,
      //           top: 60,
      //           height: 50,
      //           child: SizedBox(
      //             width: 200,
      //             height: 180,
      //             child: TextField(
      //                 controller: nameController,
      //                 decoration: InputDecoration(
      //                     border: OutlineInputBorder(),
      //                     hintText: 'ex) 김ㅇㅇ',
      //                     labelText: '회원 이름')),
      //           ),
      //         ),
      //         Positioned(
      //           left: 30,
      //           // right: 0,
      //           top: 130,
      //           child: Align(
      //             child: Text(
      //               '연락처',
      //               style: TextStyle(
      //                   color: Colors.black,
      //                   fontSize: 15,
      //                   fontWeight: FontWeight.bold,
      //                   letterSpacing: -1),
      //             ),
      //           ),
      //         ),
      //         Positioned(
      //           left: 30,
      //           right: 30,
      //           top: 155,
      //           height: 180,
      //           child: SizedBox(
      //             width: 200,
      //             height: 200,
      //             child: TextField(
      //                 controller: numberController,
      //                 style: TextStyle(color: Colors.grey[200]),
      //                 decoration: InputDecoration(
      //                     hoverColor: Colors.black12,
      //                     border: OutlineInputBorder(),
      //                     hintText: 'ex) 010-0000-0000',
      //                     labelText: '회원 연락처')),
      //           ),
      //         ),
      //         Positioned(
      //           left: 40,
      //           // right: 0,
      //           top: 260,
      //           child: Align(
      //             child: Text(
      //               '포지션',
      //               style: TextStyle(
      //                   color: Colors.black,
      //                   fontSize: 15,
      //                   fontWeight: FontWeight.bold,
      //                   letterSpacing: -1),
      //             ),
      //           ),
      //         ),
      //         Positioned(
      //           // left: -50,
      //           left: 90,
      //           top: 245,
      //           child: Align(
      //             child: SizedBox(
      //               width: 60,
      //               // height: 20,
      //               child: Container(
      //                 child: DropdownButtonExample(),
      //               ),
      //             ),
      //           ),
      //         ),
      //         Positioned(
      //           right: 125,
      //           // right: 0,
      //           top: 260,
      //           child: Align(
      //             child: Text(
      //               '생년월일',
      //               style: TextStyle(
      //                   color: Colors.black,
      //                   fontSize: 15,
      //                   fontWeight: FontWeight.bold,
      //                   letterSpacing: -1),
      //             ),
      //           ),
      //         ),
      //         Positioned(
      //           right: 35,
      //           top: 255,
      //           child: Align(
      //             child: SizedBox(
      //                 width: 80,
      //                 height: 30,
      //                 child: TextField(
      //                     controller: birthdateController,
      //                     decoration: InputDecoration(
      //                       border: OutlineInputBorder(),
      //                     ))),
      //           ),
      //         ),

      //         // Positioned(
      //         //   bottom: 0,
      //         //   child: TextButton(
      //         //     onPressed: () {
      //         //       Navigator.push(context,
      //         //           MaterialPageRoute(builder: (context) => input_code()));
      //         //     },
      //         //     child: Text('button'),
      //         //     style: TextButton.styleFrom(
      //         //         primary: Colors.blue, backgroundColor: Colors.yellow),
      //         //   ),
      //         // )
      //       ],
      //     ),
      //   ),
      // ]))