import 'package:flutter/material.dart';
import 'package:note_app_training/constants/consts.dart';
import 'package:note_app_training/constants/media_query_values_extintions.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({super.key, required this.onTap, this.isLoading = false});

  final VoidCallback onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 55,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      minWidth: context.screenWidth,
      color: kCyanColor,
      textColor: Colors.black,
      onPressed: onTap,
      child: isLoading
          ? const SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(color: Colors.black),
            )
          : const Text(
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
