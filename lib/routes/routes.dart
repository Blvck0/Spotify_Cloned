import 'package:flutter/material.dart';
import 'package:spotify_cloned/screens/dashboard_screen.dart';
import '../main.dart';
import '../screens/home_screen.dart';

const String splashScreen = "/";
const String homeScreen = "homeScreen";
const String signinScreen = "signinScreen";
const String profileScreen = "profileScreen";
const String dashboardScreen = "dashboardScreen";
const String menuScreen = "menuScreen";

// const String onboardingScreen = "onboardingScreen";

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case splashScreen:
      return MaterialPageRoute(builder: ((context) => const SplashScreen()));
    case homeScreen:
      return MaterialPageRoute(builder: ((context) => const HomeScreen()));
    case dashboardScreen:
      return MaterialPageRoute(builder: ((context) => const Dashboard()));
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ),
      );
  }
}
