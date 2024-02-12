// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:s2/model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Sing_Up extends StatefulWidget {
  const Sing_Up({super.key});

  @override
  State<Sing_Up> createState() => _HomeState();
}

class _HomeState extends State<Sing_Up> {
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80, top: 30),
                  child: Text(
                    'CREATA ACCOUNT',
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
            width: double.infinity,
            height: 111,
            decoration: const BoxDecoration(color: Colors.black),
          ),
          Container(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Create your account',
                  style: GoogleFonts.libreBaskerville(
                      fontSize: 20, fontWeight: FontWeight.w700),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32, right: 32, top: 100),
                  child: TextField(
                    controller: username,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: colors.p1)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: colors.p1)),
                        hintText: 'Username',
                        hintStyle: const TextStyle(color: Color(0xffBDBDBD))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32, right: 32, top: 20),
                  child: TextField(
                    controller: email,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: colors.p1)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: colors.p1)),
                        hintText: 'Email',
                        hintStyle: const TextStyle(color: Color(0xffBDBDBD))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32, right: 32, top: 20),
                  child: TextField(
                    controller: password,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: colors.p1)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: colors.p1)),
                        hintText: 'Password',
                        hintStyle: const TextStyle(color: Color(0xffBDBDBD))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32, right: 32, top: 20),
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: colors.p1)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: colors.p1)),
                        hintText: 'Phone Number',
                        hintStyle: const TextStyle(color: Color(0xffBDBDBD))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: GestureDetector(
                    onTap: () async {
                      try {
                        final credential = await FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                          email: email.text,
                          password: password.text,
                        );
                        Navigator.pushNamed(context, "home");
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'weak-password') {
                          print('The password provided is too weak.');
                        } else if (e.code == 'email-already-in-use') {
                          print('The account already exists for that email.');
                        }
                      } catch (e) {
                        print(e);
                      }
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 364,
                      height: 64,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: colors.p1),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    alignment: Alignment.center,
                    width: 364,
                    height: 64,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.black),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('asset/Vector.png'),
                        const Text(
                          '   Continue with facebook',
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.w700,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    alignment: Alignment.center,
                    width: 364,
                    height: 64,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.black),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('asset/Vector (1).png'),
                        const Text(
                          '   Continue with Google',
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.w700,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            width: double.infinity,
            height: 756,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
          )
        ]),
      ),
    );
  }
}
