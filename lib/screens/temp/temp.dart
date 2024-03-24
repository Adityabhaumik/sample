import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';


class RollUpTextAnimation extends StatefulWidget {
  @override
  _RollUpTextAnimationState createState() => _RollUpTextAnimationState();
}

class _RollUpTextAnimationState extends State<RollUpTextAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2), // Set the duration of the animation
    );
    _controller.forward(); // Start the animation
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose the controller when done
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Roll-Up Animation'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            FadeInUp(from:200,child: const Square()),
            FadeInUp(from:150,child: const Square()),
            FadeInUp(from:100,child: const Square()),
            FadeInUp(from:50,child: const Square()),
          ],
        ),
      )
    );
  }
}

class Square extends StatelessWidget {
  const Square({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      child: Text("1"),
    );
  }
}



class FadeInFromBottom extends StatefulWidget {
  final String text;
  final TextStyle style;
  final Duration duration;

  const FadeInFromBottom({
    Key? key,
    required this.text,
    required this.style,
    this.duration = const Duration(seconds: 5),
  }) : super(key: key);

  @override
  State<FadeInFromBottom> createState() => _FadeInFromBottomState();
}

class _FadeInFromBottomState extends State<FadeInFromBottom>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;
  late Animation<Offset> _positionAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration);
    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _positionAnimation =
        Tween<Offset>(begin: Offset(0, 100), end: Offset(0, 0)).animate(_controller);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) => FadeTransition(
        opacity: _opacityAnimation,
        child: Transform.translate(
          offset: _positionAnimation.value,
          child: Text(
            widget.text,
            style: widget.style,
          ),
        ),
      ),
    );
  }
}