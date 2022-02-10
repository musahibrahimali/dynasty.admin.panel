import 'package:flutter/material.dart';
import 'package:dynasty_urban_style/index.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: localNavigator(),
    );
  }
}
