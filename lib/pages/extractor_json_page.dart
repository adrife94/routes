import 'package:flutter/material.dart';
import 'package:routes/providers/provider.dart';

class ExtractorJsonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(provider.opciones);
    List<dynamic> lista = provider.opciones;


    return Scaffold(
        appBar: AppBar(
          title: Text("j"),
        ),



    );
  }

}
