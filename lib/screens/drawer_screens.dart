import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrawerScreens extends StatelessWidget {
  const DrawerScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Your main content goes here
          Container(
            color: const Color.fromRGBO(16, 19, 27, 1),
            child: Center(
              child: Text(
                'Your Content',
                style: TextStyle(fontSize: 20.sp, color: Colors.white),
              ),
            ),
          ),

          // Circle background
          Positioned(
            top: -85.h,
            left: 236.w,
            child: ClipPath(
              clipper: CircleClipper(),
              child: Container(
                width: 233.w,
                height: 233.h,
                color: const Color.fromRGBO(205, 80, 54, 1),
              ),
            ),
          ),

          // Circle with orange border
          Positioned(
            top: -170.h, // Adjust the position as needed
            left: 151.w, // Adjust the position as needed
            child: Container(
              width: 403.w, // Use w to scale width
              height: 403.h, // Use h to scale height
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    color: const Color.fromRGBO(205, 80, 54, 1),
                    width: 1.w), // Set border color and width
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addOval(Rect.fromCircle(
        center: Offset(size.width / 2, size.height / 2),
        radius: size.width / 2));
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
