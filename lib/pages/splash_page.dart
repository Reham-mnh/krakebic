import 'package:flutter/material.dart';
import 'package:krakebic/pages/login_page.dart';

class MovingTextExample extends StatefulWidget {
  const MovingTextExample({super.key});

  @override
  State<MovingTextExample> createState() => _MovingTextExampleState();
}

class _MovingTextExampleState extends State<MovingTextExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _scaleAnimation;
  late Animation<double> _rotationAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: const Offset(0, 0),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _scaleAnimation = Tween<double>(
      begin: 0.5,
      end: 1,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    _rotationAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
   
      _controller.forward();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff009639),
      body: Center(
        child: SlideTransition(
          position: _slideAnimation,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedBuilder(
                animation: _controller,
                builder: (BuildContext context, Widget? child) {
                  return Transform.rotate(
                    angle: _rotationAnimation.value * 2 * 3.14,

                    child: Transform.scale(
                      scale: _scaleAnimation.value,
                      child: child,
                    ),
                  );
                },
                child: Image.asset('assets/images/splash.png'),
              ),

              Text("Krakebik", style: Theme.of(context).textTheme.titleMedium),
              SizedBox(height: 10),
              Text(
                'Turn your waste into value with the best recycling app',
                style: Theme.of(
                  context,
                ).textTheme.titleMedium!.copyWith(fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
