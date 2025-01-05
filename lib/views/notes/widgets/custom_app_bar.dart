import 'package:flutter/material.dart';
import 'package:note_app_training/constants/strings.dart';
import 'package:note_app_training/views/notes/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            appTitle,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          ),
          CustomSearchIcon(),
        ],
      ),
    );
  }
}
