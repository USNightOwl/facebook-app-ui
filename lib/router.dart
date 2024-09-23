import 'package:facebook_app_ui/features/home/screens/home_screen.dart';
import 'package:facebook_app_ui/features/personal/screens/personal_screen.dart';
import 'package:facebook_app_ui/models/user.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case HomeScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      );
    case PersonalScreen.routeName:
      final User user = routeSettings.arguments as User;
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            PersonalScreen(user: user),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.ease;

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: Center(
            child: Text('404: Not found'),
          ),
        ),
        settings: routeSettings,
      );
  }
}
