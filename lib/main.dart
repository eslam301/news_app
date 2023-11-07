import 'package:flutter/material.dart';
import 'package:news_application/core/theme/application_theme.dart';
import 'package:news_application/pages/home/home_view.dart';
import 'package:news_application/pages/settings/settings_view.dart';
import 'package:news_application/pages/splash/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ApplicationTheme.lightTheme,
      themeMode: ThemeMode.light,
      initialRoute: SplashView.routeName,
      routes:{
        SplashView.routeName: (context) => const SplashView(),
        SettingsView.routeName : (context) => const SettingsView(),
        HomeView.routeName : (context) =>  HomeView(),
      } ,
    );
  }
}

