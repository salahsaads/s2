import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:s2/model.dart';

class Start extends StatelessWidget {
  Start({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(fit: StackFit.expand, children: [
        Image.asset(
          'asset/intro11.jpg',
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 70, top: 125),
          child: Text('LATEST FASTION STATMENT',
              style: GoogleFonts.libreBaskerville(
                  color: const Color(0xffFFFFFFBA),
                  fontSize: 15,
                  fontWeight: FontWeight.w700)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 70, top: 186),
          child: Text('Universal\nTime keepers\nof the world',
              style: GoogleFonts.libreBaskerville(
                  color: const Color(0xffFFFFFF),
                  fontSize: 40,
                  fontWeight: FontWeight.w700)),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 32, right: 32, top: 800, bottom: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, 'onborading', (Route) => false);
            },
            child: Container(
              alignment: Alignment.center,
              width: 364,
              height: 64,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: colors.p1),
              child: const Text(
                'Start',
                style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.w700,
                    fontSize: 16),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
