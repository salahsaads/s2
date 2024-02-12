import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:s2/home.dart';
import 'package:s2/model.dart';

class Adit extends StatefulWidget {
  final String id;
  final oldname;
  final oldprice;
  final olddiscount;
  const Adit(
      {super.key,
      required this.id,
      this.oldname,
      this.oldprice,
      this.olddiscount});

  @override
  State<Adit> createState() => _ShoppingState();
}

class _ShoppingState extends State<Adit> {
  TextEditingController name = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController discount = TextEditingController();
  File? file;
  getImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? imagegallery =
        await picker.pickImage(source: ImageSource.camera);
    file = File(imagegallery!.path);
    setState(() {});
  }

  CollectionReference prodect =
      FirebaseFirestore.instance.collection('prodect');

  Future<void> Aditprodect() {
    // Call the user's CollectionReference to add a new user
    return prodect.doc(widget.id).update({
      "name": name.text,
      'price': price.text,
      'discount': discount.text
    }).then((value) {
      print("User Updated");
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Home()));
    }).catchError((error) => print("Failed to update user: $error"));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    name.text = widget.oldname;
    price.text = widget.oldprice;
    discount.text = widget.olddiscount;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 32, top: 32, right: 32),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                width: 364,
                height: 300,
                // ignore: sort_child_properties_last
                child: file != null
                    ? Image.file(
                        file!,
                        // fit: BoxFit.cover,
                      )
                    : const Text(
                        'Image',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.w600),
                      ),
                decoration: BoxDecoration(
                    color: colors.p4, borderRadius: BorderRadius.circular(10)),
              ),
              const SizedBox(
                height: 32,
              ),
              GestureDetector(
                onTap: () async {
                  await getImage();
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 364,
                  height: 64,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: colors.p1),
                  child: const Text(
                    'Upload a photo',
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontWeight: FontWeight.w700,
                        fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              TextField(
                controller: name,
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: colors.p1)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: colors.p1)),
                    hintText: 'Name of the watch',
                    hintStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w400)),
              ),
              //Discount in price
              const SizedBox(
                height: 32,
              ),
              TextField(
                controller: price,
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: colors.p1)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: colors.p1)),
                    hintText: 'watch price',
                    hintStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w400)),
              ),
              const SizedBox(
                height: 32,
              ),
              TextField(
                controller: discount,
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: colors.p1)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: colors.p1)),
                    hintText: 'Discount in price',
                    //labelText: 'Discount in price',
                    hintStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w400)),
              ),
              SizedBox(
                height: 35,
              ),
              GestureDetector(
                onTap: () {
                  Aditprodect();
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 180,
                  height: 64,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black),
                  child: const Text(
                    'Save',
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontWeight: FontWeight.w700,
                        fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
