// ignore_for_file: sort_child_properties_last
import 'package:s2/model.dart';

import 'package:flutter/material.dart';
import 'package:s2/intro1.dart';
import 'package:s2/intro2.dart';
import 'package:s2/intro3.dart';

class OnBorading extends StatefulWidget {
  const OnBorading({super.key});

  @override
  State<OnBorading> createState() => _HomeState();
}

class _HomeState extends State<OnBorading> {
  PageController _controller = PageController();
  bool? onLastpage = false;
  bool? isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              if (index == 2) {
                onLastpage = true;
              } else {
                onLastpage = false;
              }
            });
          },
          children: [
            Intro1(),
            const Intro2(),
            const Intro3(),
          ],
        ),
        Padding(
            padding: const EdgeInsets.only(
              left: 32,
              right: 32,
              top: 800,
              bottom: 20,
            ),
            child: onLastpage!
                ? GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'Sing_Up');
                    },
                    child: Container(
                        alignment: Alignment.center,
                        width: 364,
                        height: 64,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: colors.p1),
                        child: const Text(
                          'Create account',
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.w700,
                              fontSize: 16),
                        )),
                  )
                : GestureDetector(
                    onTap: () {
                      _controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeOut);
                    },
                    child: Container(
                        alignment: Alignment.center,
                        width: 364,
                        height: 64,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: colors.p1),
                        child: const Text(
                          'Next',
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.w700,
                              fontSize: 16),
                        )),
                  ))
      ]),
    );
  }
}
