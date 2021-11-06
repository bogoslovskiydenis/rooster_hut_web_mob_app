import 'package:flutter/material.dart';
import 'package:rooster_hut_web_mob_app/widgets/banner/banner.dart';
import 'package:rooster_hut_web_mob_app/widgets/appbar/header.dart';
import 'package:rooster_hut_web_mob_app/widgets/appbar/side_menu.dart';
import 'package:rooster_hut_web_mob_app/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      endDrawer: ConstrainedBox(
        constraints: BoxConstraints(
            maxWidth: 400
        ),
        child: Center(child: SideMenu()),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: size.width,
            constraints: BoxConstraints(
                minHeight: size.height
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const <Widget>[
                Header(),

                Banners(),

                MenuItem(),

              ],
            ),

          ),
        ),
      ),
    );
  }
}

