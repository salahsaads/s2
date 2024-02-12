// ignore_for_file: sort_child_properties_last

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:s2/adit.dart';
import 'package:s2/model.dart';
import 'package:s2/modle2.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isloding = true;
  List<QueryDocumentSnapshot> data = [];
  getprodect() async {
    QuerySnapshot prodectdata =
        await FirebaseFirestore.instance.collection('prodect').limit(5).get();
    data.addAll(prodectdata.docs);
    isloding = false;
    setState(() {});
  }  

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getprodect();
  }

  bool? isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      backgroundColor: const Color.fromARGB(255, 240, 236, 236),
      body: GridView.builder(
        itemCount: data.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 1),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onLongPress: () {
                AwesomeDialog(
                    context: context,
                    dialogType: DialogType.warning,
                    animType: AnimType.leftSlide,
                    title: 'Waring',
                    btnCancelText: 'تعديل',
                    btnOkText: 'حذف',
                    btnCancelOnPress: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Adit(
                                oldname: data[index]['name'],
                                olddiscount: data[index]['discount'],
                                oldprice: data[index]['price'],
                                id: data[index].id,
                              )));
                    },
                    desc: ' هل تريد الحذف ام  التعديل',
                    btnOkOnPress: () async {
                      await FirebaseFirestore.instance
                          .collection('prodect')
                          .doc(data[index].id)
                          .delete();
                      Navigator.of(context).pushReplacementNamed('home');
                    }).show();
              },
              child: Categories(
                discount: data[index]['discount'],
                name: data[index]['name'],
                price: data[index]['price'],
              ),
            ),
          );
        },
      ),
    );
  }
}
