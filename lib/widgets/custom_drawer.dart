import 'package:flutter/material.dart';
import 'package:preferences_app/pages/pages.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: [
        const _DrawerHeader(),
        ListTile(
            leading: const Icon(Icons.pages_outlined),
            title: const Text("Home"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, HomePage.routeName);
            }),
        ListTile(
          leading: const Icon(Icons.people_outlined),
          title: const Text("People"),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.settings_outlined),
          title: const Text("Settings"),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushReplacementNamed(context, SettingsPage.routeName);
          },
        ),
      ]),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration:
          const BoxDecoration(image: DecorationImage(image: AssetImage("assets/menu-img.jpg"), fit: BoxFit.cover)),
      child: Container(),
    );
  }
}
