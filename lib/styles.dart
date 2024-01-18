import 'package:flutter/material.dart';

const kTitleTextStyle = TextStyle(fontSize: 22, fontWeight: FontWeight.w500);
const kTextStyle16w500 = TextStyle(fontSize: 16, fontWeight: FontWeight.w500);
const kTextStyle16w400 = TextStyle(fontSize: 16, fontWeight: FontWeight.w400);

const kPrimaryColor = Color.fromRGBO(13, 114, 255, 1);

final elevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    textStyle: kTextStyle16w500,
    padding: const EdgeInsets.symmetric(vertical: 15),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    backgroundColor: kPrimaryColor,
    elevation: 0,
  ),
);

const appBarTheme = AppBarTheme(
    centerTitle: true,
    backgroundColor: Colors.white,
    elevation: 0,
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
    iconTheme: IconThemeData(color: Colors.black, size: 32));
