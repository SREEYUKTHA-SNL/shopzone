import 'package:flutter/material.dart';
import 'package:shopzone/widgets/color.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // First image with gradient
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/image 3 (1).png'), // Ensure correct file path
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black, // Gradient effect
                  ],
                ),
              ),
            ),
          ),

          // Second image placed above the first image
          Positioned(
            bottom: 250, // Adjust the position as needed
            left: 50,
            child: Image.asset(
              'assets/images/image 3 (1).png', // Ensure correct file path
              width: 150, // Adjust the size as needed
              height: 150,
            ),
          ),

          
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              Container(
                width: 400,
                child: Text(
                  'Nike App Bringing Nike Members the best products,inspiration and stories in sport.', // Main headline
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: kprimary
                     // White text color
                  ),
                ),
              ),
              
             
            ],
          ),

          
        ],
      ),
    );
  }
}
