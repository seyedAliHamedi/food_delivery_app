import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

enum AniProps { opacity, offset }

class Fade extends StatelessWidget {
  const Fade({required this.child, Key? key}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final TimelineTween _tween = TimelineTween()
      ..addScene(
              begin: Duration.zero, duration: const Duration(milliseconds: 700))
          .animate(AniProps.opacity, tween: Tween(begin: 0.0, end: 1.0))
      ..addScene(
              begin: Duration.zero, duration: const Duration(milliseconds: 700))
          .animate(AniProps.offset, tween: Tween(begin: 200.0, end: 0.0));

    return PlayAnimation<TimelineValue>(
      tween: _tween,
      child: child,
      builder: (context, child, value) {
        return Opacity(
          opacity: value.get(AniProps.opacity),
          child: Transform.translate(
            offset: Offset(value.get(AniProps.offset), 0),
            child: child,
          ),
        );
      },
    );
  }
}
