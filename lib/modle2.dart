import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:s2/model.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 170,
          height: 170,
          decoration: BoxDecoration(color: colors.p5),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 13),
                child: Image.asset('asset/shopping 1.png'),
              ),
              Column(
                // crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 40,
                    height: 20,
                    decoration: BoxDecoration(color: colors.p1),
                    child: Text(
                      '30%',
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 17),
                    child: Image.asset('asset/save-outline.png'),
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              'Metalic Rap',
              style: GoogleFonts.libreBaskerville(
                  fontWeight: FontWeight.w400, fontSize: 20),
            ),
            Text(
              '(45)',
              style: TextStyle(
                  fontSize: 15, fontWeight: FontWeight.w700, color: colors.p1),
            )
          ],
        ),
      ],
    );
  }
}
