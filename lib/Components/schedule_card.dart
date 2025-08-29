import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScheduleCard extends StatelessWidget {
  final String title;
  final String date;
  final String price;
  final String imagePath;

  const ScheduleCard({
    super.key,
    required this.title,
    required this.date,
    required this.price,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: screenHeight * 0.12375, // 99px
      width: screenWidth * 0.9083, // 327px
      padding: EdgeInsets.all(screenWidth * 0.04), // ~16px
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          // Image on left side
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imagePath,
              height: screenHeight * 0.09375,
              width: screenWidth * 0.2083,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: screenWidth * 0.03), // ~12px
          // Text content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.inter(
                        fontSize: screenWidth * 0.037, // ~14px
                        fontWeight: FontWeight.w500,
                        // overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.005), // ~4px
                    Text(
                      date,
                      style: TextStyle(
                        fontSize: screenWidth * 0.032, // ~12px
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF939393),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                Text(
                  price,
                  style: GoogleFonts.inter(
                    fontSize: screenWidth * 0.037, // ~14px
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF4C4DDC),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(width: screenWidth * 0.02), // ~8px
          Image.asset(
            "assets/images/arrowright.png",
            width: screenWidth * 0.06, // ~24px
            height: screenWidth * 0.06, // ~24px
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
