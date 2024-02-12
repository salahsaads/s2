// ignore_for_file: sort_child_properties_last

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:s2/model.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(children: [
        Container(
          child: const Padding(
            padding: EdgeInsets.only(left: 32, right: 32, top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu_sharp,
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
              children: [
                const SizedBox(
                  height: 50,
                ),
                CircleAvatar(
                  radius: 75,
                  backgroundImage:
                      const AssetImage('asset/msg1261364176-35284.jpg'),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: CircleAvatar(
                      backgroundColor: colors.p1,
                      radius: 25,
                      child: Image.asset('asset/Vector (3).png'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Salah Saad Salah',
                  style: GoogleFonts.libreBaskerville(
                      fontSize: 20, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'KassabKsab@gmail.com',
                  style: GoogleFonts.libreBaskerville(
                      color: colors.p3,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 34, right: 34),
                  child: Column(children: [
                    TextField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: colors.p1)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: colors.p1)),
                          hintText: 'Order history',
                          hintStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400)),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: colors.p1)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: colors.p1)),
                          hintText: 'My Address',
                          hintStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400)),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: colors.p1)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: colors.p1)),
                          hintText: 'My Wallet',
                          hintStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400)),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: colors.p1)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: colors.p1)),
                          hintText: 'Local Stores',
                          hintStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400)),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: colors.p1)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: colors.p1)),
                          hintText: 'Settings',
                          hintStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400)),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () async{
                        await FirebaseAuth.instance.signOut();
                   print("تم تسجيل الخروج");
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('sing_in', (route) => false);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 364,
                        height: 64,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: colors.p1),
                        child: const Text(
                          'Sign out',
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.w700,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ]),
                )
              ],
            ),
          ),
          width: double.infinity,
          height: 756,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        ),
      ]),
    );
  }
}
