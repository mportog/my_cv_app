import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  CustomChip(this.assetImage, this.label,
      {this.backgroundColor = Colors.transparent});
  final String label;
  final String assetImage;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: CircleAvatar(
        backgroundImage: Image.asset(assetImage).image,
        backgroundColor: backgroundColor,
      ),
      label: Text(label),
    );
  }
}
