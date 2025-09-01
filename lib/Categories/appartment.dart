import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_app_ui/Components/card.dart';
import 'package:hotel_app_ui/Product%20Details/details_screen2.dart';

class Appartment extends StatelessWidget {
  const Appartment({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: Image.asset("assets/images/arrowleft.png"),
                        ),
                      ),
                      Text(
                        "Appartment",
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
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: Image.asset("assets/images/setting.png"),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.04),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailsScreen2()),
                    );
                  },
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
                SizedBox(height: screenHeight * 0.02),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailsScreen2()),
                    );
                  },
                  child: HotelCard(
                    imageAsset: "assets/images/apartment.jpg",
                    title: "Palace Hotel",
                    location: "Alice Springs NT 0870, Australia",
                    price: "175.9",
                    rating: "5.0",
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailsScreen2()),
                    );
                  },
                  child: HotelCard(
                    imageAsset: "assets/images/apartment1.jpg",
                    title: "Golden Hotel",
                    location: "Alice Springs NT 0870, Australia",
                    price: "175.9",
                    rating: "5.0",
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
