import 'package:dev_card/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class AppsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text('Apps desenvolvidos',
              style: TextStyle(color: Colors.black87))),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CustomCard(
                  'quiz_icon.png',
                  '70 Quiz',
                  'Entreternimento',
                  'App em flutter com intagração com Google Sheets e animações com Flare',
                  'Baixar APK',
                  'Link'),
              CustomCard(
                  'mailer_logo.png',
                  'Any Mailer',
                  'E-mail',
                  'App em flutter para envios de email com diversos servidores SMTP (gmail, hotmail, outlook, yahoo)',
                  'Baixar APK',
                  'Link'),
              CustomCard(
                  'kanye_rest_icon.png',
                  'Kanye Says',
                  'Entreternimento',
                  'App em flutter com frases aleatórias ditas por Kanye West. Possui integração com a API KanyeRest',
                  'Baixar APK',
                  'Link'),
              CustomCard(
                  'empreendedor_icon.png',
                  'Conectando negócios',
                  'Negócios',
                  'App em flutter desenvolvido para um grupo de universitários implementarem seu trabalho na matéria de empreendedorismo. Integração, chat, login e armazenamento via Firebase',
                  'Baixar APK',
                  'Link'),
              CustomCard(
                  'correio_api_icon.jpg',
                  'Correios Calc',
                  'Serviços',
                  'App em flutter com integração à API dos Correios (XML) para calculo de frete e prazo de entrega',
                  'Baixar APK',
                  'Link'),
            ]),
      ),
    );
  }
}
