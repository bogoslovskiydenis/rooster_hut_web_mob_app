import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 38),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Container(width: 100,height: 100,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.black),child: SizedBox(
             height: 150,
             width: 200,
             child: IconButton(
               onPressed: () => {print('Доставка')},
               icon: Image.asset(
                 'assets/logo-all.png',
               ),
             )),),
       ],),);
  }
}
