import 'package:app_ro_tur/views/Cacoal.dart';
import 'package:app_ro_tur/views/JiParana.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'views/PortoVelho.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => MyApp(),
  ));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (_) => HomeScreen(),
        '/portovelho': (_) => PortoVelho(),
        '/jiparana': (_) => JiParana(),
        '/cacoal': (_) => Cacoal(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      useInheritedMediaQuery: true, // adicionando a propriedade aqui
    );
  }
}
