import 'package:flutter/material.dart';
class CircularImageGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:  const [
        Center(
          child: CircleAvatar(
            radius: 85,
            backgroundColor: Colors.white,
            child: ImageWithShadow(
              imagePath: 'assets/images/repepio1.png',
              radius: 80,
              radius_upper: 85,
            ),
          ),
        ),
        Positioned(
          top: 40,
          left: 160,
          child: CircleAvatar(
            radius: 60,
            backgroundColor: Colors.white,
            child: ImageWithShadow(
              imagePath: 'assets/images/i4.png',
              radius: 55,
              radius_upper: 60,
            ),
          ),
        ),
        Positioned(
          top: 100,
          left: 15,
          child: ImageWithShadow(
            imagePath: 'assets/images/i5.png',
            radius: 50,
            radius_upper: 55,
          ),
        ),
        Positioned(
          top: 130,
          right: -10,
          child: ImageWithShadow(
            imagePath: 'assets/images/i6.png',
            radius:40,
            radius_upper: 45,
          ),
        ),
        Positioned(
          bottom: 60,
          left: 90,
          child: ImageWithShadow(
            imagePath: 'assets/images/i7.png',
            radius: 40,
            radius_upper: 45,
          ),
        ),
        Positioned(
          bottom: 120,
          left: -40,
          child: ImageWithShadow(
            imagePath: 'assets/images/i8.png',
            radius: 65,
            radius_upper: 70,
          ),
        ),
        Positioned(
          bottom: 30,
          right: 95,
          child: ImageWithShadow(
            imagePath: 'assets/images/repicio3.png',
            radius: 50,
            radius_upper: 55,
          ),
        ),
        Positioned(
          bottom: 180,
          right: 30,
          child: ImageWithShadow(
            imagePath: 'assets/images/repicio3.png',
            radius: 30,
            radius_upper: 35,
          ),
        ),
      ],
    );
  }
}

class ImageWithShadow extends StatelessWidget {
  final String imagePath;
  final double radius;
  final double radius_upper;

  const ImageWithShadow({
    Key? key,
    required this.imagePath,
    required this.radius,
    required this.radius_upper,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.6),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: CircleAvatar(
        radius: radius_upper,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: radius,
          backgroundImage: AssetImage(imagePath),
        ),
      ),
    );
  }
}