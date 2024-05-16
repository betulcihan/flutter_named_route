import 'package:flutter/material.dart';
import 'package:named_route_example/core/constants/app_routes.dart';
import 'package:named_route_example/model/screen_model.dart';
import 'package:named_route_example/view/first_screen.dart';
import 'package:named_route_example/view/second_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.firstScreen:
        return buildRoute(const FirstScreen(), settings: settings);
      case AppRoutes.secondScreen:
        final arguments = settings.arguments as ScreenData;
        return buildRoute(SecondScreen(data: arguments), settings: settings);
      default:
        return buildRoute(const FirstScreen(), settings: settings);
    }
  }

  static MaterialPageRoute buildRoute(Widget child, {required RouteSettings settings}) {
    return MaterialPageRoute(settings: settings, builder: (BuildContext context) => child);
  }
}
