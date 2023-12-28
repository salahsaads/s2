import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:s2/model.dart';

class Complet extends StatefulWidget {
  const Complet({super.key});

  @override
  State<Complet> createState() => _HomeState();
}

class _HomeState extends State<Complet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 292),
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: colors.p2,
                  child: CircleAvatar(
                    radius: 45,
                    backgroundColor: colors.p4,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: colors.p1,
                      child: Image.asset('asset/Vector (2).png'),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            Text(
              'Order Placed',
              style: GoogleFonts.libreBaskerville(
                  fontSize: 20, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Your order #6468 was placed successfully',
              style: TextStyle(color: colors.p3),
            ),
            const SizedBox(
              height: 200,
            ),
            GestureDetector(
              onTap: () {
                //Navigator.pushNamed(context, "home");
              },
              child: Container(
                alignment: Alignment.center,
                width: 364,
                height: 64,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12), color: colors.p1),
                child: const Text(
                  'See Order status',
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "home");
              },
              child: Container(
                alignment: Alignment.center,
                width: 364,
                height: 64,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black),
                child: const Text(
                  'Continue Shopping',
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
