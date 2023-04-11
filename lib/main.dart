import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spotify_cloned/routes/routes.dart' as routes;
import 'package:spotify_cloned/utilities/colors.dart';
import 'utilities/size_config.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // MultiProvider(
        // providers: const [],
        // child:
        MaterialApp(
      title: 'spotify_clone',
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: routes.controller,
      initialRoute: routes.splashScreen,
      home: const SplashScreen(),
      // ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 10),
      () => Navigator.pushReplacementNamed(context, routes.dashboardScreen),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Palette.kBackgroundColor,
      body: Center(
        child: Image(
          color: Colors.green,
          height: getProportionateScreenHeight(150),
          width: getProportionateScreenWidth(200),
          image: const AssetImage(
            'images/spotify_logo.png',
          ),
        ),
      ),
    );
  }
}
