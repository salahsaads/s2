// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:s2/modle2.dart';
import 'package:s2/model.dart';

class categories11 extends StatefulWidget {
  categories11({super.key});

  @override
  State<categories11> createState() => _HomeState();
}

class _HomeState extends State<categories11> {
  bool? isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 32, right: 32, top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.menu_sharp,
                  color: Colors.white,
                  size: 28,
                ),
                Text(
                  'CATEGORIES',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 28,
                ),
              ],
            ),
          ),
          width: double.infinity,
          height: 111,
          decoration: const BoxDecoration(color: Colors.black),
        ),
        Container(
          child: SingleChildScrollView(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Unique Watches',
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
                Padding(
                  padding: const EdgeInsets.only(left: 32, top: 36),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Leather Strap',
                            style: GoogleFonts.libreBaskerville(
                                fontWeight: FontWeight.w700, fontSize: 20),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Row(
                              children: [
                                Text(
                                  'See All',
                                  style: GoogleFonts.libreBaskerville(
                                      color: colors.p1,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 10),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                  color: colors.p1,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
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
                Padding(
                  padding: const EdgeInsets.only(left: 32, top: 36),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Metal Strap',
                            style: GoogleFonts.libreBaskerville(
                                fontWeight: FontWeight.w700, fontSize: 20),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Row(
                              children: [
                                Text(
                                  'See All',
                                  style: GoogleFonts.libreBaskerville(
                                      color: colors.p1,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 10),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                  color: colors.p1,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Categories(),
                          SizedBox(
                            width: 20,
                          ),
                          Categories(),
                        ],
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      const Row(
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
                Padding(
                  padding: const EdgeInsets.only(left: 32, top: 36),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sport Strap',
                            style: GoogleFonts.libreBaskerville(
                                fontWeight: FontWeight.w700, fontSize: 20),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Row(
                              children: [
                                Text(
                                  'See All',
                                  style: GoogleFonts.libreBaskerville(
                                      color: colors.p1,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 10),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                  color: colors.p1,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Categories(),
                          SizedBox(
                            width: 20,
                          ),
                          Categories(),
                        ],
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      const Row(
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
          width: double.infinity,
          height: 756,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        )
      ]),
    );
  }
}
