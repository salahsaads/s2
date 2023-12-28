// ignore_for_file: sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:s2/Settings.dart';
import 'package:s2/categories1.dart';
import 'package:s2/favourite.dart';
import 'package:s2/home.dart';
import 'package:s2/model.dart';
import 'package:s2/shopping.dart';

class Nave extends StatefulWidget {
  Nave({super.key});

  @override
  State<Nave> createState() => _HomeState();
}

class _HomeState extends State<Nave> {
  bool? isChecked = true;
  int? i = 0;
  final Tabs = [Home(), categories11(), const Favourite(), const Shopping(), const Settings()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        //color: Colors.red,

        child: GNav(
          backgroundColor: Colors.white,
          gap: 8,
          onTabChange: (index) {
            setState(() {
              i = index;
            });
          },
          padding: const EdgeInsets.all(25),
          color: colors.p3,
          activeColor: colors.p1,
          iconSize: 20,

          //tabBackgroundColor: colors.p1,
          tabs: [
            const GButton(
              icon: Icons.home,
            ),
            const GButton(
              icon: Icons.view_timeline_rounded,
            ),
            const GButton(
              icon: Icons.save_alt_outlined,
            ),
            const GButton(
              icon: Icons.shopping_bag,
            ),
            const GButton(
              icon: Icons.settings,
            ),
          ],
        ),
      ),
      body: Tabs[i!],
    );
  }
}
