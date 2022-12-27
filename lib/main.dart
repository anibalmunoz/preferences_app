import 'package:flutter/material.dart';
import 'package:preferences_app/pages/pages.dart';
import 'package:preferences_app/providers/theme_provider.dart';
import 'package:preferences_app/utils/preferences.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => ThemeProvider(isDarkMode: Preferences.isDarkMode))],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preferences App',
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        SettingsPage.routeName: (context) => const SettingsPage()
      },
      theme: Provider.of<ThemeProvider>(context).currentTheme,
    );
  }
}
