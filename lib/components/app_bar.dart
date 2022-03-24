import 'package:flutter/material.dart';
import 'package:hizma_project/utils/const.dart';

Widget buildAppBar(String title) {
  return AppBar(
      elevation: 0,
      centerTitle: true,
      title: Text(title,
          style: const TextStyle(
              color: AppColors.blackColor,
              fontSize: 20,
              fontWeight: FontWeight.bold)),
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      shadowColor: Colors.white,
      bottomOpacity: 1,
      iconTheme: const IconThemeData(color: Colors.white));
}
