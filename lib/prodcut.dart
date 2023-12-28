import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:s2/model.dart';

class Prodcut extends StatefulWidget {
  const Prodcut({super.key});

  @override
  State<Prodcut> createState() => _ProdcutState();
}

class _ProdcutState extends State<Prodcut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff6f6f8),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.only(top: 71, left: 32, right: 32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.menu_sharp,
                //color: Colors.white,
                size: 28,
              ),
              Text(
                'PRODUCT PAGE',
                style: GoogleFonts.roboto(
                    fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const Row(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.shopping_bag,
                    //color: Colors.white,
                    size: 28,
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 55,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 32, right: 32),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Icon(
              Icons.share,
              color: colors.p1,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset('asset/ww.png')],
        ),
        const SizedBox(
          height: 50,
        ),
        Container(
          width: double.infinity,
          //height: 455,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                'The Ambassador \n    Hrridge 1990',
                style: GoogleFonts.libreBaskerville(
                    fontSize: 30, fontWeight: FontWeight.w700),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: colors.p1,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.star,
                    color: colors.p1,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.star,
                    color: colors.p1,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.star,
                    color: colors.p1,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.star,
                    color: colors.p4,
                  ),
                  Text(
                    '1280 Review',
                    style: TextStyle(color: colors.p3),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 32, top: 29),
                child: Text(
                  'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", ',
                  style: TextStyle(
                      fontSize: 16,
                      color: colors.p2,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Text(
                '${350.14}',
                style: TextStyle(
                    color: colors.p1,
                    fontSize: 30,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 24,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "cart");
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 364,
                  height: 64,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: colors.p1),
                  child: const Text(
                    'Add to Card',
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontWeight: FontWeight.w700,
                        fontSize: 16),
                  ),
                ),
              ),
            ]),
          ),
        )
      ]),
    );
  }
}
