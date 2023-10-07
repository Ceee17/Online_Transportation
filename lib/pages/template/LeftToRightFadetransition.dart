import 'package:flutter/material.dart';

class LeftToRightFadeTransition extends PageRouteBuilder {
  final Widget page;
  final Duration duration;

  LeftToRightFadeTransition({
    required this.page,
    this.duration = const Duration(milliseconds: 200),
  }) : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: Offset(-1.0, 0.0), // Slide in from left
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
