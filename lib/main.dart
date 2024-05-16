import 'package:flutter/material.dart';
import 'package:named_route_example/core/constants/app_routes.dart';
import 'package:named_route_example/core/route/route_generator.dart';
import 'package:named_route_example/view/first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: AppRoutes.firstScreen,
      onGenerateRoute: RouteGenerator.generateRoute,
      home: FirstScreen(),
    );
  }
}
