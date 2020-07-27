import 'package:dev_card/pages/apps_page.dart';
import 'package:dev_card/pages/contact_page.dart';
import 'package:dev_card/pages/personal_info_page.dart';
import 'package:dev_card/pages/professional_page.dart';
import 'package:flutter/material.dart';

class MyResume extends StatefulWidget {
  @override
  _MyResumeState createState() => _MyResumeState();
}

class _MyResumeState extends State<MyResume> {
  final List<Widget> pages = [
    PersonalPage(),
    ProfessionalPage(),
    AppsPage(),
    ContactPage()
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: <Widget>[
            NavigationRail(
              groupAlignment: 0.0,
              trailing: IconButton(icon: Icon(Icons.share), onPressed: () {}),
              selectedIndex: _selectedIndex,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              labelType: NavigationRailLabelType.selected,
              destinations: [
                NavigationRailDestination(
                  icon: Icon(Icons.person_outline),
                  selectedIcon: Icon(Icons.person),
                  label: Text('Pessoal'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.card_travel),
                  selectedIcon: Icon(Icons.description),
                  label: Text('Experiência'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.devices),
                  selectedIcon: Icon(Icons.smartphone),
                  label: Text('Apps'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.contacts),
                  selectedIcon: Icon(Icons.contact_mail),
                  label: Text('Contato'),
                ),
              ],
            ),
            VerticalDivider(thickness: 1, width: 1),
            // This is the main content.
            Expanded(child: pages[_selectedIndex])
          ],
        ),
      ),
    );
  }
}
