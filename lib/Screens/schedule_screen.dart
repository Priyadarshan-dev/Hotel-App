import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_app_ui/Components/calendar.dart';
import 'package:hotel_app_ui/Components/schedule_card.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.05, // ~20px
                right: screenWidth * 0.05, // ~20px
                top: screenHeight * 0.03, // ~30px
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: screenWidth * 0.1, // ~40px
                    width: screenWidth * 0.1, // ~40px
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xFFECECEC),
                    ),
                    child: Image.asset("assets/images/arrowleft.png"),
                  ),
                  Text(
                    "Schedule",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.042, // ~16px
                    ),
                  ),
                  Container(
                    height: screenWidth * 0.1, // ~40px
                    width: screenWidth * 0.1, // ~40px
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xFFECECEC),
                    ),
                    child: Image.asset("assets/images/setting.png"),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.025), // ~20px
            Calendar(),
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.05, // ~20px
                right: screenWidth * 0.05, // ~20px
                top: screenHeight * 0.025, // ~20px
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My Schedule",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: screenWidth * 0.042, // ~16px
                    ),
                  ),
                  Text(
                    "See all",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: screenWidth * 0.037, // ~14px
                      color: Color(0xFF4C4DDC),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.025), // ~20px
            ScheduleCard(
              title: "The Aston Vill Hotel",
              date: "19 March 2025",
              price: "\$200.7",
              imagePath: "assets/images/Property1.png",
            ),
            SizedBox(height: screenHeight * 0.025), // ~20px
            ScheduleCard(
              title: "Golden Palace Hotel",
              date: "25 March 2024",
              price: "\$175.9",
              imagePath: "assets/images/Property2.png",
            ),
          ],
        ),
      ),
    );
  }
}
