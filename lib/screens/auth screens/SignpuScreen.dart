import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart'; // Ensure you import GoogleFonts

class SignUpscreen extends StatefulWidget {
  const SignUpscreen({super.key});

  @override
  State<SignUpscreen> createState() => _SignUpscreenState();
}

class _SignUpscreenState extends State<SignUpscreen> {
  @override
  Widget build(BuildContext context) {
    // Get the screen dimensions
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      // appBar: AppBar(
      //   flexibleSpace: Container(
      //     height: height * 0.15,
      //     padding: const EdgeInsets.only(top: 20.0),
      //     alignment: Alignment.center,
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //           IconButton(
      //         onPressed: () {
      //           Get.back();
      //         },
      //         icon: Icon(FontAwesomeIcons.chevronLeft)),
      //         RichText(
      //           text: TextSpan(
      //             style: GoogleFonts.comfortaa(
      //               fontSize: 30.0,
      //               color: Colors.black,
      //             ),
      //             children: <TextSpan>[
      //               TextSpan(
      //                 text: 'Aura',
      //                 style: TextStyle(
      //                     fontWeight: FontWeight.bold,
      //                     color: const Color(0xFFfba7fc)),
      //               ),
      //               TextSpan(
      //                 text: 'Secure',
      //                 style: TextStyle(
      //                     fontWeight: FontWeight.bold, color: Colors.black),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: height * 0.12,
            padding: const EdgeInsets.only(top: 20.0),
            alignment: Alignment.center,
            decoration:
                BoxDecoration(color: const Color.fromARGB(255, 255, 244, 252)),
            child: Row(
              // crossAxisAlignmen,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(FontAwesomeIcons.chevronLeft)),
                Container(
                  margin: EdgeInsets.fromLTRB(60, 0, 0, 0),
                  child: RichText(
                    text: TextSpan(
                      style: GoogleFonts.comfortaa(
                        fontSize: 30.0,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Aura',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFFfba7fc)),
                        ),
                        TextSpan(
                          text: 'Secure',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Center(child: Text('Sign Up Screen')),
        ],
      ), // Placeholder for body content
    );
  }
}
