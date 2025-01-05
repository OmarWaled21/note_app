import 'package:flutter/material.dart';
import 'package:note_app_training/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key,
      required this.appTitle,
      required this.onTap,
      required this.icon});

  final String appTitle;
  final VoidCallback onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            appTitle,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          ),
          CustomSearchIcon(onTap: onTap, icon: icon),
        ],
      ),
    );
  }
}
