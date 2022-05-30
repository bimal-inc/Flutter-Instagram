// ignore_for_file: dead_code

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_instagram/screens/screens.dart';

class CustomRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('onGenerateRoute: ${settings.name}');
    // ignore: unused_element

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            settings: const RouteSettings(name: '/'),
            builder: (_) => const Scaffold());
      case SplashScreen.routeName:
        return SplashScreen.route();
      default:
        return _errorRoute();
    }
  }
}

Route _errorRoute() {
  return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
            appBar: AppBar(
              title: Text('error'),
            ),
            body: const Center(
              child: Text('Something Went Wrong'),
            ),
          ));
}
