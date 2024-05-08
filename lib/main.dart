import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:settings/Settings.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (context, child) {
        child = ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, child!),
          maxWidth: 1200,
          minWidth: 450,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(450, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(450, name: MOBILE),
            const ResponsiveBreakpoint.resize(700, name: TABLET),
            const ResponsiveBreakpoint.autoScale(700, name: TABLET),
            const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
            const ResponsiveBreakpoint.autoScale(1000, name: DESKTOP),
          ],
        );
        return child;
      },
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: settings(),
    );
  }
}


