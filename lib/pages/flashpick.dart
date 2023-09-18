import 'package:flutter/material.dart';
import 'templatehead.dart';

class FlashpickPage extends StatelessWidget {
  const FlashpickPage({super.key});
  static const String idScreen = "flashpick";

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: TemplateHead(title: "Flash Pick"));
  }
}