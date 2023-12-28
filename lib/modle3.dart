import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:s2/modle2.dart';
import 'package:s2/model.dart';

class model extends StatefulWidget {
  const model({super.key});

  @override
  State<model> createState() => _modelState();
}

class _modelState extends State<model> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Categories',
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
            Categories()
          ],
        ),
      ],
    );
  }
}
