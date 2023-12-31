import 'package:flutter/material.dart';
import 'package:chap8_drawer/widgets/menu_list_tile.dart';

class LeftDrawerWidget extends StatefulWidget {
  const LeftDrawerWidget({super.key});

  @override
  State<LeftDrawerWidget> createState() => _LeftDrawerWidgetState();
}

class _LeftDrawerWidgetState extends State<LeftDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: Icon(
              Icons.face,
              size: 48.0,
              color: Colors.white,
            ),
            accountName: Text('Saqib Shehzad'),
            accountEmail: Text('shehzadsaqib424@gmail.com'),
            otherAccountsPictures: <Widget>[
              Icon(
                Icons.bookmark_border,
                color: Colors.white,
              )
            ],
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/img.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const MenuListTileWidget(),
        ],
      ),
    );
  }
}
