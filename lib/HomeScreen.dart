import 'package:app_ro_tur/views/Cacoal.dart';
import 'package:app_ro_tur/views/JiParana.dart';
import 'package:flutter/material.dart';
import 'views/PortoVelho.dart';
import 'launch_intents.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final Uri url = Uri(scheme: 'https', host: 'www.globo.com');

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Cidades Turisticas de Rondônia'),
        actions: [
          PopupMenuButton(
              tooltip: 'Acessar Menu',
              onSelected: (String value) {
                Navigator.of(context).pushNamed('/$value');
              },
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                      value: 'portovelho', child: Text('Porto Velho')),
                  PopupMenuItem(value: 'jiparana', child: Text('Ji-Parana')),
                  PopupMenuItem(value: 'cacoal', child: Text('Cacoal')),
                ];
              })
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("imagens/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: mediaQuery.size.height * 0.02),
                child: ElevatedButton(
                    onPressed: () {
                      makePhoneCall('+5569992086561');
                    },
                    child: Text('CONTATE_NOS')),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: mediaQuery.size.height * 0.02),
                child: ElevatedButton(
                    onPressed: () {
                      launchInBrowser(url);
                    },
                    child: Text('ACESSE o SITE')),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: mediaQuery.size.height * 0.02),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => PortoVelho()));
                    },
                    child: Text('Acessar Porto Velho')),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: mediaQuery.size.height * 0.02),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => JiParana()));
                    },
                    child: Text('Acessar Ji-Parana')),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: mediaQuery.size.height * 0.02),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Cacoal()));
                    },
                    child: Text('Acessar Cacoal')),
              ),
            ],
          ),
        ),
      ),
    );
  }

}