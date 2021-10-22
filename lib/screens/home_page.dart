import 'package:flutter/material.dart';
import 'package:rooster_hut_web_mob_app/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xFFF8F8FF),
              Color(0xFFFCFDFD),
            ])),
        child: SingleChildScrollView(child: Column(children: const <Widget>[NavBar()],),),
      ),
    );
  }
}

