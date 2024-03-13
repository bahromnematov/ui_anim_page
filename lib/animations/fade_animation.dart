import 'package:flutter/material.dart';
import 'package:simple_animations/animation_builder/loop_animation_builder.dart';

class FadeAnimation extends StatefulWidget {
  final double delay;
  final Widget child;

  const FadeAnimation(this.child, this.delay, {super.key});

  @override
  State<FadeAnimation> createState() => _FadeAnimationState();
}

class _FadeAnimationState extends State<FadeAnimation> {
  bool isAnimating = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    stratAnimation();
  }

  void stratAnimation() async {
    await Future.delayed(Duration(milliseconds: 2700));
    if (mounted) {
      setState(() {
        isAnimating = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return isAnimating
        ? LoopAnimationBuilder(
            tween: Tween(begin: 0.8, end: 1.0),
            duration: Duration(seconds: 3),
            curve: Curves.easeOut,
            builder: (context, value, child) {
              return Transform.scale(
                scale: value,
                child: child,
              );
            },
            child: widget.child,
          )
        : widget.child;
  }
}
