import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_app_ui/Components/card.dart';
import 'package:hotel_app_ui/Product%20Details/details_screen.dart';

class HomeStay extends StatelessWidget {
  const HomeStay({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

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
                        "Home Stay",
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
                      MaterialPageRoute(builder: (context) => DetailsScreen()),
                    );
                  },
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
                SizedBox(height: screenHeight * 0.02),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailsScreen()),
                    );
                  },
                  child: HotelCard(
                    imageAsset: "assets/images/homestay.jpg",
                    title: "The Vill Hotel",
                    location: "Alice Springs NT 0870, Australia",
                    price: "200.7",
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
                      MaterialPageRoute(builder: (context) => DetailsScreen()),
                    );
                  },
                  child: HotelCard(
                    imageAsset: "assets/images/homestay1.jpg",
                    title: "The Aston  Hotel",
                    location: "Alice Springs NT 0870, Australia",
                    price: "200.7",
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
