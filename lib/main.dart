import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:s2/cart.dart';
import 'package:s2/certification_check.dart';
import 'package:s2/complet.dart';
import 'package:s2/firebase_options.dart';
import 'package:s2/nave.dart';

import 'package:s2/onborading.dart';
import 'package:s2/prodcut.dart';
import 'package:s2/sing_in.dart';
import 'package:s2/sing_up.dart';

import 'package:s2/start.dart';
import 'package:s2/verify.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FirebaseAuth.instance.currentUser == null ? Start() : Nave(),
    routes: {
      "start": (context) => Start(),
      "onborading": (context) => const OnBorading(),
      "Sing_Up": (context) => const Sing_Up(),
      'sing_in': (context) => const Sing_In(),
      "verify": (context) => const Verify(),
      "certification_check": (context) => const Certification_check(),
      "home": (context) => Nave(),
      'prodcut': (context) => const Prodcut(),
      'cart': (context) => Cart(),
      'complet': (context) => const Complet(),
    },
  ));
}
