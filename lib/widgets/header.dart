import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rooster_hut_web_mob_app/widgets/menu_item.dart';
import 'package:rooster_hut_web_mob_app/widgets/utils_ui/responcive.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: <Widget>[
          Image.asset(
            'assets/logo-all.png',
            width: 50,
          ),

          SizedBox(width: 10),

          Text(
            "Rooster Hut",
            style: GoogleFonts.reenieBeanie(
                fontSize: 18
            ),
          ),

          Spacer(),

          if (!isMobile(context))
            Row(
              children: [
                NavItem(
                  title: 'Home',
                  tapEvent: () {},
                ),
                NavItem(
                  title: 'Donate',
                  tapEvent: () {},
                ),
                NavItem(
                  title: 'Contact Us',
                  tapEvent: () {},
                ),
                NavItem(
                  title: 'Login',
                  tapEvent: () {},
                ),
                NavItem(
                  title: 'Shop',
                  tapEvent: () {},
                ),
              ],
            ),

          if (isMobile(context))
            IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                }
            )
        ],
      ),
    );
  }
}