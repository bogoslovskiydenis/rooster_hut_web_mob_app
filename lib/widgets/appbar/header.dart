import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rooster_hut_web_mob_app/widgets/appbar/appbar_item/nav_item.dart';
import 'package:rooster_hut_web_mob_app/widgets/utils_ui/responcive.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Row(
        children: [Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.red),child: SizedBox(
            height: 100,
            width: 100,
            child: IconButton(
              onPressed: () => {print('Доставка')},
              icon: Image.asset(
                'assets/logo-all.png',
              ),
            )),),

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