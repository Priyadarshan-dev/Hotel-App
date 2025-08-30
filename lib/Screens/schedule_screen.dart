import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_app_ui/Components/calendar.dart';
import 'package:hotel_app_ui/Components/schedule_card.dart';
import 'package:hotel_app_ui/Screens/selecting_screen.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  List<DateTime> selectedDates = [];
  List<Map<String, dynamic>> scheduledCards = [];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.05,
                right: screenWidth * 0.05,
                top: screenHeight * 0.03,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      height: screenWidth * 0.1,
                      width: screenWidth * 0.1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Image.asset("assets/images/arrowleft.png"),
                    ),
                  ),
                  Text(
                    "Schedule",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.042,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (selectedDates.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Please select a date first")),
                        );
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SelectingScreen(
                              selectedDates: selectedDates,
                              onCardSelected: (card) {
                                setState(() {
                                  scheduledCards.add(card);
                                });
                              },
                            ),
                          ),
                        );
                      }
                    },
                    child: Container(
                      height: screenWidth * 0.1,
                      width: screenWidth * 0.1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Image.asset("assets/images/setting.png"),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.025),
            Calendar(
              onDatesSelected: (dates) {
                setState(() {
                  selectedDates = dates;
                });
              },
            ),
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.05,
                right: screenWidth * 0.05,
                top: screenHeight * 0.025,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My Schedule",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: screenWidth * 0.042,
                    ),
                  ),
                  Text(
                    "See all",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: screenWidth * 0.037,
                      color: Color(0xFF4C4DDC),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.02),

            if (scheduledCards.isNotEmpty)
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                  itemCount: scheduledCards.length,
                  itemBuilder: (context, index) {
                    final card = scheduledCards[index];
                    return Padding(
                      padding: EdgeInsets.only(bottom: screenHeight * 0.015),
                      child: ScheduleCard(
                        title: card['title'],
                        date: card['date'],
                        price: card['price'],
                        imagePath: card['image'],
                      ),
                    );
                  },
                ),
              )
            else
              Expanded(
                child: Center(
                  child: Text(
                    "No scheduled items yet",
                    style: TextStyle(
                      fontSize: screenWidth * 0.037,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
