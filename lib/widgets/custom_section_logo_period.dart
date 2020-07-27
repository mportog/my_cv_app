import 'package:flutter/material.dart';

class CustomSectionJob extends StatelessWidget {
  CustomSectionJob(this.imageAsset, this.companyName);
  final String imageAsset;
  final String companyName;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        CircleAvatar(backgroundImage: Image.asset(imageAsset).image),
        Text(companyName,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24)),
      ],
    );
  }
}
