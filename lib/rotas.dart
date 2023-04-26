import 'package:app_ro_tur/HomeScreen.dart';
import 'package:app_ro_tur/views/PortoVelho.dart';
import 'package:flutter/material.dart';


class Rotas {
  static Route<dynamic> gerarRotas(RouteSettings configuracoes) {
    switch (configuracoes.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case 'PortoVelho':
        return MaterialPageRoute(builder: (_) => PortoVelho());
      case 'JiParana':
        return MaterialPageRoute(builder: (_) => PortoVelho());
      case 'Cacoal':
        return MaterialPageRoute(builder: (_) => PortoVelho());
      default:
        return MaterialPageRoute(builder: (_) => HomeScreen());
    }
  }
}
