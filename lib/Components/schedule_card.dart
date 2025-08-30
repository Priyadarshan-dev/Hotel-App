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
      height: screenHeight * 0.12375,
      width: screenWidth * 0.9083,
      padding: EdgeInsets.all(screenWidth * 0.04),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 6,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imagePath,
              height: screenHeight * 0.09375,
              width: screenWidth * 0.2083,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: screenWidth * 0.03),
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
                        fontSize: screenWidth * 0.037,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.005),
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/calendar.png",
                          height: 20,
                          color: Color(0xFF939393),
                        ),
                        SizedBox(width: 5),
                        Text(
                          date,
                          style: TextStyle(
                            fontSize: screenWidth * 0.032,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF939393),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: screenHeight * 0.01),
                  child: Row(
                    children: [
                      Text(
                        '${price}',
                        style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w700,
                          fontSize: screenWidth * 0.037,
                          color: Color(0xFF4C4DDC),
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.01),
                      Text(
                        "/night",
                        style: GoogleFonts.inter(
                          fontSize: screenWidth * 0.032,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF939393),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: screenWidth * 0.02),
          Image.asset(
            "assets/images/arrowright.png",
            width: screenWidth * 0.06,
            height: screenWidth * 0.06,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
