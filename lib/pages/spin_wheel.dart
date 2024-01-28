import 'package:democracy_app_sample/pages/arrow_painter.dart';
import 'package:democracy_app_sample/pages/wheel_painter.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class SpinWheelScreen extends StatefulWidget {
  @override
  _SpinWheelScreenState createState() => _SpinWheelScreenState();
}

class _SpinWheelScreenState extends State<SpinWheelScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  final _wheelNotifier = ValueNotifier(0.0);
  final _random = math.Random();

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));
    // Set up the initial animation
    _setupAnimation();
  }

  void _setupAnimation() {
    // Generate a random end angle
    final double randomValue = _random.nextDouble() * 2 * math.pi;
    print("random value: ${randomValue}");
    _animation = Tween<double>(
            begin: 0,
            end: (2 * math.pi * 5) +
                randomValue // Ensures at least 5 full rotations plus a random part
            )
        .animate(CurvedAnimation(parent: _controller, curve: Curves.decelerate))
      ..addListener(() {
        _wheelNotifier.value = _animation.value;
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          // Handle completion if necessary
        }
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _spin() {
    // Generate a random number of turns, between 2 and 10, for example
    final numberOfTurns = _random.nextInt(9) + 2;
    // Generate a random angle for the wheel to stop at (0 to 2 * PI)
    final randomAngle = _random.nextDouble() * 2 * math.pi;

    // Reset the controller if it's already been used
    if (_controller.isCompleted) {
      _controller.reset();
    }

    // Define the tween with the random end position. It should end at a multiple of 2 * PI plus the random angle
    // to ensure it completes the spin and lands on the random angle.
    final endAngle = numberOfTurns * 2 * math.pi + randomAngle;
    _animation = Tween<double>(begin: 0, end: endAngle).animate(_controller)
      ..addListener(() {
        _wheelNotifier.value = _animation.value;
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          // Handle what happens when the spin completes, if anything
        }
      });

    // Start the animation
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    double wheelSize = 300; // The size of the wheel
    return Scaffold(
      appBar: AppBar(
        title: Text('Spin Wheel'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Static arrow indicator
            Transform.rotate(
              angle: math.pi,
              child: CustomPaint(
                painter: ArrowPainter(indicatorSize: 20),
                size: Size(wheelSize, 20), // Adjust size to fit the arrow
              ),
            ),
            // Spinning wheel
            ValueListenableBuilder<double>(
              valueListenable: _wheelNotifier,
              builder: (context, value, child) {
                return Transform.rotate(
                  angle: value,
                  child: CustomPaint(
                    painter: WheelPainter(
                      wheelSize: wheelSize,
                      // labels: List.generate(4, (index) => '${index + 1}'),
                      labels: [
                        "Prashant",
                        "Vaibhav",
                        "Ashwini",
                        "Abhishek",
                        "Viral",
                        "Pooja"
                      ],
                    ),
                    size: Size(wheelSize, wheelSize),
                  ),
                );
              },
            ),
            ElevatedButton(
              onPressed: _spin,
              child: Text('Spin'),
            ),
          ],
        ),
      ),
    );
  }
}
