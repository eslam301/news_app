import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home/home_view.dart';

class SplashView extends StatefulWidget {
  static const String routeName = '/splash';
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), (){
      Navigator.pushReplacementNamed(context, HomeView.routeName);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage('assets/images/pattern.png',
          ),
          fit: BoxFit.cover,
        )
      ),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child:Image(
            image: AssetImage('assets/images/logo.png'),

          )
        )
      ),
    );
  }
}
