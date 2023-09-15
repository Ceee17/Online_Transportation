import 'package:flutter/material.dart';
import 'templatehead.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});
  static const String idScreen = "order";

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: TemplateHead(title: "ORDER"));
  }
}
