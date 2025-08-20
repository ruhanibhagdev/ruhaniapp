import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ruhaniapp/base/image_constants.dart';

class DisplayLoadingWidget extends StatefulWidget {
  const DisplayLoadingWidget({super.key});

  @override
  State<DisplayLoadingWidget> createState() => _DisplayLoadingWidgetState();
}

class _DisplayLoadingWidgetState extends State<DisplayLoadingWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(ImageConstants.kloadingjason, height: 252),
            SizedBox(
              height: 20,
            ),
            FadeTransition(
              opacity: _animation,
              child: const Text(
                'Loading...',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
    
  }
}

