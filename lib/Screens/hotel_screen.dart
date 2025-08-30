import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_app_ui/Components/card.dart';
import 'package:hotel_app_ui/Product%20Details/details_screen.dart';
import 'package:hotel_app_ui/Product%20Details/details_screen2.dart';
import 'package:hotel_app_ui/Product%20Details/details_screen3.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: screenWidth * 0.1, // ~40px
                        width: screenWidth * 0.1, // ~40px
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: Image.asset("assets/images/arrowleft.png"),
                      ),
                    ),
                    Text(
                      "Near Location",
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
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Image.asset("assets/images/setting.png"),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailsScreen()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
                    child: HotelCard(
                      imageAsset: "assets/images/Property1.png",
                      title: "The Aston Vill Hotel",
                      location: "Alice Springs NT 0870, Australia",
                      price: "200.7",
                      rating: "5.0",
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                    ),
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailsScreen2()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
                  child: HotelCard(
                    imageAsset: "assets/images/Property2.png",
                    title: "Golden Palace Hotel",
                    location: "Alice Springs NT 0870, Australia",
                    price: "175.9",
                    rating: "5.0",
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailsScreen3()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
                  child: HotelCard(
                    imageAsset: "assets/images/Property3.png",
                    title: "The Luxury Resort",
                    location: "Alice Springs NT 0870, Australia",
                    price: "200.7",
                    rating: "5.0",
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                  ),
                ),
              ),

              SizedBox(height: screenHeight * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}
