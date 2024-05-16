import 'package:flutter/material.dart';
import 'package:named_route_example/model/screen_model.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key, required this.data});
  final ScreenData data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: data.color,
      body: Center(
        child: Text(data.name),
      ),
    );
  }
}
