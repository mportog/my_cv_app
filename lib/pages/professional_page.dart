import 'package:dev_card/enum/enum_align.dart';
import 'package:dev_card/widgets/custom_chip.dart';
import 'package:dev_card/widgets/custom_detail_job.dart';
import 'package:dev_card/widgets/custom_section.dart';
import 'package:dev_card/widgets/custom_section_logo_period.dart';
import 'package:flutter/material.dart';

class ProfessionalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, backgroundColor: Colors.transparent),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            CustomDetailJob('Abr, 2018', 'Out, 2019', 'T-Systems Brasil',
                'Desenvolvedor para Realidade Virtual e Realidade Aumentada (Front & Back-End) com HTC VIVE e MS HoloLens (Unity3d e C#)'),
            CustomSection('Estágio'),
            Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: <Widget>[
                CustomChip('csharp_icon.png', 'C#'),
                CustomChip('dart_icon.png', 'Dart'),
                CustomChip('flutter_icon.png', 'Flutter'),
                CustomChip('git_hub_logo.png', 'GitHub'),
                CustomChip('git_icon.png', 'Git'),
                CustomChip('JavaScript_logo.png', 'JavaScript'),
                CustomChip('firebase.png', 'Firebase'),
                CustomChip('java_icon.png', 'Java'),
                CustomChip('xamarin_icon.png', 'Xamarin'),
                CustomChip('json_icon.png', 'JSON'),
                CustomChip('ibm_db2.jpg', 'IBM DB2'),
                CustomChip('sqlserver.jpg', 'SQL Server'),
                CustomChip('swagger_icon.png', 'Swagger'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
