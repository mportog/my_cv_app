import 'package:dev_card/enum/enum_align.dart';
import 'package:dev_card/widgets/custom_section.dart';
import 'package:flutter/material.dart';

class PersonalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 50),
        CircleAvatar(
          backgroundImage: Image.asset('mpg_profile.png').image,
          radius: MediaQuery.of(context).size.width / 6,
        ),
        SizedBox(height: 15),
        Text('Matheus Porto Garcia', style: TextStyle(fontSize: 24)),
        CustomSection('Biografia', type: AlignTitle.center),
        CustomSection('Escolaridade', type: AlignTitle.center),
        CustomSection('Acadêmica', type: AlignTitle.center),
        CustomSection('Atividades extra', type: AlignTitle.center),
      ],
    );
  }
}
