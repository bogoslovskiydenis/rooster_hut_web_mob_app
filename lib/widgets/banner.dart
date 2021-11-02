import 'package:flutter/material.dart';

import 'utils_ui/responcive.dart';

class Banners extends StatelessWidget {
  const Banners({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        margin: EdgeInsets.all(16),
        child: Row(
          children: <Widget>[
            /*если текс с лева картинка с права , если моб версия картинка центр текс под картинкой*/
            //   Expanded(
            //       child: Padding(
            //         padding: EdgeInsets.only(right: !isMobile(context) ? 40:0),
            //         child: Row(
            //           mainAxisAlignment: !isMobile(context) ? MainAxisAlignment.start:MainAxisAlignment.center,
            //           crossAxisAlignment: !isMobile(context) ? CrossAxisAlignment.start:CrossAxisAlignment.center,
            //           children: [
            //             if (!isMobile(context))
            //             Image.asset('assets/rh-banner.jpg',
            //                 height: size.height * 0.3),
            //       ],
            //         ),
            //       )
            //   ),
            //   if (!isDesktop(context) )
            //     Expanded(
            //         child: Image.asset(
            //           'assets/rh-banner.jpg',
            //           height: size.height * 0.7,
            //         )
            //     )
            /*картинка по центру*/
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: !isMobile(context) ? 40 : 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (isMobile(context))
                      Image.asset('assets/rh-banner.jpg',
                          height: size.height * 0.3)
                    else if (isDesktop(context))
                      Image.asset('assets/rh-banner.jpg',
                          height: size.height * 0.7),
                    if (isTab(context))
                      Image.asset('assets/rh-banner.jpg',
                          height: size.height * 0.4)
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
