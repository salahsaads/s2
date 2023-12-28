import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Intro3 extends StatefulWidget {
  const Intro3({super.key});

  @override
  State<Intro3> createState() => _HomeState();
}

class _HomeState extends State<Intro3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(fit: StackFit.expand, children: [
        Image.asset(
          //'asset/alvaro-bernal-RgIKRYhmG2k-unsplash.jpg',
          'asset/paul-cuoco-CO2vOhPqlrM-unsplash.jpg',
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 48, top: 73),
          child: Text('Add a Signature\nto your look',
              style: GoogleFonts.libreBaskerville(
                  color: const Color(0xffFFFFFF),
                  fontSize: 40,
                  fontWeight: FontWeight.w700)),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 32, right: 32, top: 730, bottom: 80),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'sing_in');
            },
            child: Container(
              alignment: Alignment.center,
              width: 364,
              height: 64,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.transparent),
              child: const Text(
                'Sign in',
                style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.w700,
                    fontSize: 16),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
