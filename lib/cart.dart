// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:s2/model.dart';

class Cart extends StatefulWidget {
 const Cart({super.key});

  @override
  State<Cart> createState() => _HomeState();
}

class _HomeState extends State<Cart> {
  bool? isChecked = true;
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
            padding: const EdgeInsets.only(left: 32, right: 32),
            child: Row(children: [
              const Icon(
                Icons.menu_sharp,
                color: Colors.white,
                size: 28,
              ),
              const SizedBox(
                width: 100,
              ),
              Text(
                'CART',
                style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              )
            ]),
          ),
        ),
        Container(
          width: double.infinity,
          height: 1200,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25))),
          child: Padding(
            padding: const EdgeInsets.only(left: 32, right: 32),
            child: Column(children: [
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Text(
                    'SHAPPING TO',
                    style: GoogleFonts.libreBaskerville(
                        fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    width: 159,
                  ),
                  Text('Change',
                      style: TextStyle(fontSize: 16, color: colors.p1)),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'October City,Cairo \nEgypt',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Divider(
                thickness: 2,
                color: colors.p1,
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Text(
                    'PAY WITH CART',
                    style: GoogleFonts.libreBaskerville(
                        fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    width: 140,
                  ),
                  Text('Change',
                      style: TextStyle(fontSize: 16, color: colors.p1)),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'xxxx-xxxx-xxxx-9465',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Divider(
                thickness: 2,
                color: colors.p1,
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Text(
                    'ORDER DATAILS',
                    style: GoogleFonts.libreBaskerville(
                        fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 90,
                        height: 94,
                        decoration: const BoxDecoration(color: Color(0xfff6f6f8)),
                        child: Image.asset('asset/11.png'),
                      ),
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '  Metalic Rap',
                            style: GoogleFonts.libreBaskerville(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            '\$200',
                            style: TextStyle(
                                color: colors.p1,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 90,
                        height: 94,
                        decoration: const BoxDecoration(color: Color(0xfff6f6f8)),
                        child: Image.asset('asset/11.png'),
                      ),
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '  Metalic Rap',
                            style: GoogleFonts.libreBaskerville(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            '\$200',
                            style: TextStyle(
                                color: colors.p1,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 90,
                        height: 94,
                        decoration: const BoxDecoration(color: Color(0xfff6f6f8)),
                        child: Image.asset('asset/11.png'),
                      ),
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '  Metalic Rap',
                            style: GoogleFonts.libreBaskerville(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            '\$200',
                            style: TextStyle(
                                color: colors.p1,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Divider(
                thickness: 2,
                color: colors.p1,
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 23,
                  ),
                  Row(
                    children: [
                      Text(
                        'SHSPPING METHOD',
                        style: GoogleFonts.libreBaskerville(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        width: 11,
                      ),
                      Text(
                        'Shapping method',
                        style: GoogleFonts.libreBaskerville(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        width: 105,
                      ),
                      Text('FREE',
                          style: GoogleFonts.libreBaskerville(
                              color: colors.p1,
                              fontSize: 16,
                              fontWeight: FontWeight.w700))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        width: 11,
                      ),
                      Text(
                        'Express (5days)',
                        style: GoogleFonts.libreBaskerville(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        width: 105,
                      ),
                      Text('\$40.00',
                          style: GoogleFonts.libreBaskerville(
                              color: colors.p1,
                              fontSize: 16,
                              fontWeight: FontWeight.w700))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        width: 11,
                      ),
                      Text(
                        'Premium (1days)',
                        style: GoogleFonts.libreBaskerville(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        width: 105,
                      ),
                      Text('\$50.00',
                          style: GoogleFonts.libreBaskerville(
                              color: colors.p1,
                              fontSize: 16,
                              fontWeight: FontWeight.w700))
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Divider(
                    thickness: 2,
                    color: colors.p1,
                  ),
                ],
              )
            ]),
          ),
        ),
        Container(
          width: double.infinity,
          height: 320,
          color: Colors.white,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 35, right: 32, top: 38),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Subtotal',
                      style: GoogleFonts.libreBaskerville(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      '\$1500.00',
                      style: GoogleFonts.libreBaskerville(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 38,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shipping',
                      style: GoogleFonts.libreBaskerville(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      '\$50.00',
                      style: GoogleFonts.libreBaskerville(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 38,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total to pay',
                      style: GoogleFonts.libreBaskerville(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      '\$1550.00',
                      style: GoogleFonts.libreBaskerville(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 38,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "complet");
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 364,
                    height: 64,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: colors.p1),
                    child: const Text(
                      'Place Order',
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                  ),
                ),
              ]),
            ),
            width: double.infinity,
            height: 305,
            decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
          ),
        )
      ]),
    );
  }
}
