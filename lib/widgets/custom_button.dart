import 'package:flutter/material.dart';
import 'package:note_app_training/constants/consts.dart';
import 'package:note_app_training/constants/media_query_values_extintions.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 55,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      minWidth: context.screenWidth,
      color: kCyanColor,
      textColor: Colors.black,
      onPressed: onTap,
      child: const Text(
        'Add',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
