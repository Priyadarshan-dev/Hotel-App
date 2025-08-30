import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_app_ui/Components/select_card.dart';

class SelectingScreen extends StatelessWidget {
  final List<DateTime> selectedDates;
  final Function(Map<String, dynamic>)? onCardSelected;

  const SelectingScreen({
    super.key,
    required this.selectedDates,
    this.onCardSelected,
  });

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
                    "Schedule Cards",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.042,
                    ),
                  ),
                  GestureDetector(
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
            SizedBox(height: screenHeight * 0.04),

            SelectCard(
              imageAsset: "assets/images/Property1.png",
              title: "The Aston Vill Hotel",
              location: "Alice Springs NT 0870, Australia",
              price: "200.7",
              rating: "5.0",
              onTap: () {
                final cardData = {
                  'title': "The Aston Vill Hotel",
                  'date': selectedDates.isNotEmpty
                      ? "${selectedDates.first.day}/${selectedDates.first.month}/${selectedDates.first.year}"
                      : "No date selected",
                  'price': "\$200.7",
                  'image': "assets/images/Property1.png",
                };
                if (onCardSelected != null) {
                  onCardSelected!(cardData);
                }
              },
            ),
            SizedBox(height: screenHeight * 0.02),
            SelectCard(
              imageAsset: "assets/images/Property2.png",
              title: "Golden Palace Hotel",
              location: "Alice Springs NT 0870, Australia",
              price: "175.9",
              rating: "5.0",
              onTap: () {
                final cardData = {
                  'title': "Golden Palace Hotel",
                  'date': selectedDates.isNotEmpty
                      ? "${selectedDates.first.day}/${selectedDates.first.month}/${selectedDates.first.year}"
                      : "No date selected",
                  'price': "\$175.9",
                  'image': "assets/images/Property2.png",
                };
                if (onCardSelected != null) {
                  onCardSelected!(cardData);
                }
              },
            ),
            SizedBox(height: screenHeight * 0.02),
            SelectCard(
              imageAsset: "assets/images/Property3.png",
              title: "The Luxury Resort",
              location: "Alice Springs NT 0870, Australia",
              price: "200.7",
              rating: "5.0",
              onTap: () {
                final cardData = {
                  'title': "The Luxury Resort",
                  'date': selectedDates.isNotEmpty
                      ? "${selectedDates.first.day}/${selectedDates.first.month}/${selectedDates.first.year}"
                      : "No date selected",
                  'price': "\$200.7",
                  'image': "assets/images/Property3.png",
                };
                if (onCardSelected != null) {
                  onCardSelected!(cardData);
                }
              },
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: screenHeight * 0.05),
              child: GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("The Hotel Added to Schedule!"),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
                child: Container(
                  height: screenHeight * 0.07,
                  width: screenWidth * 0.9083,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFF4C4DDC),
                  ),
                  child: Center(
                    child: Text(
                      "Add To Schedule",
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: screenWidth * 0.042,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
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
