import 'package:flutter/material.dart';

class CustomDetailJob extends StatelessWidget {
  CustomDetailJob(
      this.beginDate, this.endDate, this.companyName, this.jobDescription);
  final String jobDescription;
  final String beginDate;
  final String endDate;
  final String companyName;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(Icons.calendar_today),
                Text(beginDate),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.event),
                Text(endDate),
              ],
            ),
          ],
        ),
        VerticalDivider(thickness: 1),
        Container(
          constraints:
              BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.5),
          child: Column(
            children: <Widget>[
              Text(companyName,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24)),
              Text(
                jobDescription,
                textAlign: TextAlign.right,
                overflow: TextOverflow.clip,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
