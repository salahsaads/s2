import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:s2/modle2.dart';
import 'package:s2/model.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _favouriteState();
}

class _favouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(children: [
        Container(
          width: double.infinity,
          height: 111,
          decoration: const BoxDecoration(color: Colors.black),
          child: Padding(
            padding: const EdgeInsets.only(left: 32, right: 32, top: 50),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                const Icon(
                  Icons.menu_sharp,
                  color: Colors.white,
                  size: 28,
                ),
                const SizedBox(
                  width: 100,
                ),
                Text(
                  'FAVOURITE',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 756,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25))),
          child: SingleChildScrollView(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Products you may liked',
                  style: GoogleFonts.libreBaskerville(
                      fontSize: 20, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Find the best watch for your wrist',
                  style: TextStyle(
                      color: colors.p3,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 32, top: 36),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Categories(),
                          SizedBox(
                            width: 20,
                          ),
                          Categories(),
                        ],
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 32, top: 36),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Categories(),
                          SizedBox(
                            width: 20,
                          ),
                          Categories(),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
