import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Intro1 extends StatefulWidget {
  Intro1({super.key});

  @override
  State<Intro1> createState() => _HomeState();
}

class _HomeState extends State<Intro1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(fit: StackFit.expand, children: [
        Image.asset(
          'asset/intro2.jpg',
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 48, top: 563),
          child: Text('Unique watches\n  From classic\n   Collections',
              style: GoogleFonts.libreBaskerville(
                  color: const Color(0xffFFFFFF),
                  fontSize: 40,
                  fontWeight: FontWeight.w700)),
        ),
        /*Padding(
          padding: const EdgeInsets.only(
            left: 32,
            right: 32,
            top: 800,
            bottom: 20,
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'intro2');
            },
            child: Container(
              alignment: Alignment.center,
              width: 364,
              height: 64,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: colors.p1),
              child: const Text(
                'Next',
                style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.w700,
                    fontSize: 16),
              ),
            ),
          ),
        )*/
      ]),
    );
  }
}
