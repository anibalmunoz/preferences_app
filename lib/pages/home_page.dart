import 'package:flutter/material.dart';
import 'package:preferences_app/utils/preferences.dart';
import 'package:preferences_app/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String routeName = "home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      drawer: const CustomDrawer(),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("Dark Mode: ${Preferences.isDarkMode}"),
        const Divider(),
        Text("Género : ${Preferences.gender}"),
        const Divider(),
        Text("Nombre de usuario: ${Preferences.name}"),
        const Divider(),
      ]),
    );
  }
}
