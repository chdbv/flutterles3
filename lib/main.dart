// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         home: MyWidget());
//   }
// }

// class MyWidget extends StatelessWidget {
//   MyWidget({super.key});
//   TextEditingController mycontroller = TextEditingController();
//   String value = '';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: mycontroller,
//               onChanged: (text) {
//                 value = text;
//               },
//               obscureText: true,
//               obscuringCharacter: "*",
//               decoration: InputDecoration(
//                 border: InputBorder.none,
//                 labelText: "Enter name",
//                 hintText: "Enter your name",
//                 icon: const Icon(Icons.ac_unit),
//                 suffixIcon: Icon(Icons.search_sharp),
//                 prefixIcon: Icon(Icons.home_filled),

//                 //focused border
//                 focusedBorder: const OutlineInputBorder(
//                   borderSide: BorderSide(
//                     width: 10,
//                     color: Colors.red,
//                   ),
//                 ),
//                 //enabled border
//                 enabledBorder: OutlineInputBorder(
//                   borderSide: const BorderSide(
//                     width: 10,
//                     color: Colors.blue,
//                   ),
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 30,
//             ),
//             TextField(
//               decoration: InputDecoration(
//                 border: InputBorder.none,
//                 labelText: "Enter name",
//                 hintText: "Enter your name",
//                 icon: const Icon(Icons.ac_unit),

//                 //focused border
//                 focusedBorder: const OutlineInputBorder(
//                   borderSide: BorderSide(
//                     width: 10,
//                     color: Colors.red,
//                   ),
//                 ),
//                 //enabled border
//                 enabledBorder: OutlineInputBorder(
//                   borderSide: const BorderSide(
//                     width: 10,
//                     color: Colors.blue,
//                   ),
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyWidget());
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: const Color(0xFFD8E4F1),
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white70,
                      ),
                      margin: const EdgeInsets.only(top: 150, bottom: 70),
                      width: 430,
                      height: 540,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 23, bottom: 10),
                            child: Text(
                              "Email",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 23, right: 23),
                            child: TextField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: "Enter email",
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.grey,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 23, bottom: 10),
                                child: Text(
                                  "Password",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 113),
                                child: Text(
                                  "Forgot password?",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.blue),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 23, right: 23),
                            child: TextField(
                              keyboardType: TextInputType.number,
                              obscureText: true,
                              obscuringCharacter: "*",
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: "Enter password",
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.grey,
                                  ),
                                ),
                                // obscureText: true,
                                //  obscuringCharacter: "*",
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 40),
                          Center(
                            child: RawMaterialButton(
                              fillColor: Colors.blue,
                              onPressed: null,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 163, vertical: 17),
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 2,
                      ),
                      child: TextButton(
                        onPressed: null,
                        child: Text(
                          "Sing up",
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
