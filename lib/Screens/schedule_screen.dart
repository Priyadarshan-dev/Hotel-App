import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_app_ui/Components/calendar.dart';
import 'package:hotel_app_ui/Components/schedule_card.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 40,
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
                      fontSize: 16,
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xFFECECEC),
                    ),
                    child: Image.asset("assets/images/setting.png"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Calendar(),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My Schedule",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "See all",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color(0xFF4C4DDC),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ScheduleCard(
              title: "The Aston Vill Hotel",
              date: "19 March 2025",
              price: "\$200.7",
              imagePath: "assets/images/Property1.png",
            ),
            SizedBox(height: 20),
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
