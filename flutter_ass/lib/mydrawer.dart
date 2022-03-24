import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Mohammed Al Shawwa'),
            accountEmail: Text('mosh0011@gmail.com'),
            currentAccountPicture: CircleAvatar(
                child: ClipOval(
              child: Image.asset('assets/img.jpg'),
            )),
          ),
          ListTile(
            title: Text('First element'),
          ),
          ListTile(
            title: Text('Second element'),
          ),
          ListTile(
            title: Text('Third element'),
          ),
          ListTile(
            title: Text('Fourth element'),
          ),
          ListTile(
            title: Text('Fifth element'),
          ),
        ],
      ),
    );
  }
}
