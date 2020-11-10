import 'package:flutter/material.dart';
import 'package:routes/pages/alerts_page.dart';
import 'package:routes/pages/avatar_page.dart';
import 'package:routes/pages/card_page.dart';
import 'package:routes/pages/extractor_json_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      routes: <String, WidgetBuilder> {
        "alert" : (BuildContext context) => Alert_Page(),
        "extractor" : (BuildContext context) => ExtractorJsonPage(),
      },
    );
  }


}

class MyHomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Parecida a la app de componentes"),
      ),
      body: Center(
        child: ListView(
          children: [
            RaisedButton(
              child: Text("AvatarPage"),
              onPressed: () {
                final ruta = MaterialPageRoute(
                    builder: (context) {
                      return Avatar_Page();
                    }
                );
                Navigator.push(context, ruta);
              },
            ),
            RaisedButton(
              child: Text("CardPage"),
              onPressed: () {
               final ruta = MaterialPageRoute(
                    builder: (context) {
                      return Card_Page();
                    }
                );
                Navigator.push(context, ruta);
                

              },
            ),
            RaisedButton(
              child: Text("AlertPage"),
              onPressed: () {
                Navigator.pushNamed(context, "alert");
              },
            ),
            RaisedButton(
              child: Text("ExtractorPage"),
              onPressed: () {
                Navigator.pushNamed(context, "extractor");
              },
            ),

          ],
        ),
      ),
    );
  }
}
