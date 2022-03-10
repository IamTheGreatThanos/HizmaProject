import 'package:flutter/material.dart';

Widget buildAppBar(String title) {
  return AppBar(
  elevation: 0,
  centerTitle: true,
  title: Text(title, style: const TextStyle(color: Colors.white, fontSize: 20)),
  automaticallyImplyLeading: true,
  backgroundColor: Colors.red,
  shadowColor: Colors.white,
  bottomOpacity: 1,
  iconTheme: const IconThemeData(color: Colors.white)
  );
}
