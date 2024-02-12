import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:s2/model.dart';

class Categories extends StatelessWidget {
  final name;
  final price;
  final discount;
  const Categories(
      {super.key,
      this.name = 'name',
      this.price = 'price',
      this.discount = 'discount'});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 170,
          height: 150,
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
                      '${discount}',
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
              '${name}',
              style: GoogleFonts.libreBaskerville(
                  fontWeight: FontWeight.w400, fontSize: 20),
            ),
            Text(
              '(${price})',
              style: TextStyle(
                  fontSize: 15, fontWeight: FontWeight.w700, color: colors.p1),
            )
          ],
        ),
      ],
    );
  }
}
