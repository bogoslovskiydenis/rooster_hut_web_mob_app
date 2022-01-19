import 'package:flutter/material.dart';

class MenuItem extends StatefulWidget {
  const MenuItem({
    Key? key,
  }) : super(key: key);

  @override
  _MenuItemState createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  Widget categoriesContainer({
    required String name,
    required String image,
  }) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.all(8),
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(image)),
              color: Colors.red,
              borderRadius: BorderRadius.circular(20)),
        ),
        Text(name)
      ],
    );
  }

  Widget cardMenuItems({required String name, required String image}) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.all(8),
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(image)),
              color: Colors.red,
              borderRadius: BorderRadius.circular(20)),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var count = 5;
    if (MediaQuery.of(context).size.width < 700) {
      count = 2;
    }
    return Container(
      child: Column(
        children: [
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Row(
                children: [
                  categoriesContainer(
                      name: 'fdfdf', image: 'assets/logo32.png'),
                  categoriesContainer(
                      name: 'fdfdf', image: 'assets/logo32.png'),
                  categoriesContainer(
                      name: 'fdfdf', image: 'assets/logo32.png'),
                  categoriesContainer(
                      name: 'fdfdf', image: 'assets/logo32.png'),
                ],
              ),
            ),
          ),
          Center(
            child: GridView.count(
              crossAxisCount: count,
              shrinkWrap: true,
              children: [
                cardMenuItems(image: 'assets/logo32.png', name: 'dsds'),
                cardMenuItems(image: 'assets/logo32.png', name: 'dsds'),
                cardMenuItems(image: 'assets/logo32.png', name: 'dsds'),
                cardMenuItems(image: 'assets/logo32.png', name: 'dsds'),
                cardMenuItems(image: 'assets/logo32.png', name: 'dsds'),
                cardMenuItems(image: 'assets/logo32.png', name: 'dsds'),
                cardMenuItems(image: 'assets/logo32.png', name: 'dsds'),
                cardMenuItems(image: 'assets/logo32.png', name: 'dsds'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
