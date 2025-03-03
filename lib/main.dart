import 'package:flutter/material.dart';
import 'package:medical_health_app/peresentation_layer/resources/routes_manager.dart';
late  Size   screenSize;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      debugShowCheckedModeBanner: false,

    );
  }
}
