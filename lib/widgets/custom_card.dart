import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  CustomCard(this.imageAsset, this.title, this.subtitle, this.description,
      this.linkLabel, this.linkUrl);

  final String imageAsset;
  final String title;
  final String subtitle;
  final String description;
  final String linkLabel;
  final String linkUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Image.asset(
                imageAsset,
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(title,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                  Text(subtitle),
                  SizedBox(height: 10),
                  Text(description),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FlatButton(
                            onPressed: () {
                              print('Abrira URL do APP $title');
                            },
                            child: Text(linkLabel + linkUrl,
                                style: TextStyle(color: Colors.indigo))),
                      ])
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
