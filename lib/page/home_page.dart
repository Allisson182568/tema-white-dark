import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tema_white_dark/page/second_page.dart';
import 'package:tema_white_dark/page/time_lapse.dart';
import 'package:tema_white_dark/thema_dark_light/themes.dart';

import '../main.dart';
import 'navigationbar_widget.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(

          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_4_rounded),
            onPressed: () {
              currentTheme.toggleTheme();
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Fluter Themes Demo',
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return SegundaTela();
                  }),
                );
              },
              child: Text('Segunda Tela'),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return TimeLapse();
                  }),
                );
              },
              child: Text('Time Lapse'),)
          ],
        ),
      ),
    );
  }
}

