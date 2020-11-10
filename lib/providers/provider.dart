import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class Provider {
  List<dynamic> opciones = [];

  Provider() {}

  Future<List<dynamic>> cargarData() async {
    final resp = await rootBundle.loadString('data/menu_opts.json');
      Map dataMap = json.decode(resp);
      // print(dataMap['rutas']);
      opciones = dataMap['rutas'];

      return opciones;

        }


}

final provider = new Provider();
