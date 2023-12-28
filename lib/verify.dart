// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:s2/Otp.dart';
import 'package:s2/model.dart';

class Verify extends StatefulWidget {
  const Verify({super.key});

  @override
  State<Verify> createState() => _HomeState();
}

class _HomeState extends State<Verify> {
  bool? isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120, top: 30),
                  child: Text(
                    'VERIFICATION',
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
            width: double.infinity,
            height: 111,
            decoration: const BoxDecoration(color: Colors.black),
          ),
          Container(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Enter the 4 digit code sent',
                  style: GoogleFonts.libreBaskerville(
                      fontSize: 20, fontWeight: FontWeight.w700),
                ),
                Text(
                  '+201063012453',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: colors.p1),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Otp(),
                    Otp(),
                    Otp(),
                    Otp(),
                  ],
                ),
                const SizedBox(
                  height: 400.5,
                ),
                Text(
                  'Didn’t receive the SMS?',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: colors.p3),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Request New Code in 04:15',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "certification_check");
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 364,
                    height: 64,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: colors.p4),
                    child: const Text(
                      'Verify Your text',
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
            width: double.infinity,
            height: 756,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
          )
        ]),
      ),
    );
  }
}
