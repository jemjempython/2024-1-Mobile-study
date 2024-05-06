import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
              CustomPaint(
                painter: Top(),
              ),
              CustomPaint(
                painter: Mid(),
              ),
              CustomPaint(
                painter: Bottom(),
              ),
          ],
        ),
      ),
    );
  }
}

class Top extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Paint rect = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Paint whitecircle = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Paint blackcircle = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path pathRect = Path()
      ..moveTo(50, 50)
      ..lineTo(150, 50)
      ..lineTo(150, 100)
      ..lineTo(50, 100)
      ..lineTo(50, 50);
    canvas.drawPath(pathRect, rect);

    Path pathRight = Path()
      ..moveTo(150, 100)
      ..arcToPoint(
          Offset(150, 50),
          radius: Radius.circular(25),
        clockwise: false,
      );
    canvas.drawPath(pathRight, blackcircle);

    Path pathLeft = Path()
      ..moveTo(50, 100)
      ..arcToPoint(
        Offset(50, 50),
        radius: Radius.circular(25),
        clockwise: false,
      );
    canvas.drawPath(pathLeft, whitecircle);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class Mid extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint rect = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Paint whitecircle = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path pathRect = Path()
      ..moveTo(50, 150)
      ..lineTo(150, 150)
      ..lineTo(150, 200)
      ..lineTo(50, 200)
      ..lineTo(50, 150);
    canvas.drawPath(pathRect, rect);

    Path pathRight = Path()
      ..moveTo(150, 200)
      ..arcToPoint(
        Offset(150, 150),
        radius: Radius.circular(25),
        clockwise: true,
      );
    canvas.drawPath(pathRight, whitecircle);

    Path pathLeft = Path()
      ..moveTo(50, 200)
      ..arcToPoint(
        Offset(50, 150),
        radius: Radius.circular(25),
        clockwise: false,
      );
    canvas.drawPath(pathLeft, whitecircle);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class Bottom extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint rect = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Paint blackcircle = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path pathRect = Path()
      ..moveTo(50, 250)
      ..lineTo(150, 250)
      ..lineTo(150, 300)
      ..lineTo(50, 300)
      ..lineTo(50, 250);
    canvas.drawPath(pathRect, rect);

    Path pathRight = Path()
      ..moveTo(150, 300)
      ..arcToPoint(
        Offset(150, 250),
        radius: Radius.circular(25),
        clockwise: false,
      );
    canvas.drawPath(pathRight, blackcircle);

    Path pathLeft = Path()
      ..moveTo(50, 300)
      ..arcToPoint(
        Offset(50, 250),
        radius: Radius.circular(25),
        clockwise: true,
      );
    canvas.drawPath(pathLeft, blackcircle);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

