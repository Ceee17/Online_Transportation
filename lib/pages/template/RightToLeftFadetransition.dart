import 'package:flutter/material.dart';

class RightToLeftFadeTransition extends PageRouteBuilder {
  final Widget page;
  final Duration duration;

  RightToLeftFadeTransition({
    required this.page,
    this.duration = const Duration(milliseconds: 200),
  }) : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: Offset(1.0, 0.0), // Slide in from right
                end: Offset.zero,
              ).animate(
                CurvedAnimation(
                  parent: animation,
                  curve:
                      Curves.easeInOut, // You can change the curve as desired
                ),
              ),
              child: FadeTransition(
                opacity: animation,
                child: child,
              ),
            );
          },
          transitionDuration: duration, // Set the transition duration here
        );
}
