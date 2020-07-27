import 'package:dev_card/enum/enum_align.dart';
import 'package:flutter/material.dart';

class CustomSection extends StatelessWidget {
  CustomSection(this.sectionTitle, {this.type = AlignTitle.center});
  final String sectionTitle;
  final AlignTitle type;
  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      type.index != 0 ? Flexible(child: Divider(thickness: 1)) : Container(),
      Padding(
        padding: const EdgeInsets.all(10),
        child: Text(
          sectionTitle,
          style: TextStyle(fontSize: 25),
        ),
      ),
      type.index != 2 ? Flexible(child: Divider(thickness: 1)) : Container()
    ]);
  }
}
