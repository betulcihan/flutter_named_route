import 'package:flutter/material.dart';
import 'package:named_route_example/core/constants/app_routes.dart';
import 'package:named_route_example/model/screen_model.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text("First Screen"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.secondScreen,
              arguments: ScreenData(name: "Second Screen", color: Colors.blueAccent));
        },
      ),
    );
  }
}
