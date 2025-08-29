import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_app_ui/Components/card.dart';
import 'package:hotel_app_ui/Components/popular_hotel_card.dart';
import 'package:hotel_app_ui/Product%20Details/details_screen.dart';
import 'package:hotel_app_ui/Product%20Details/details_screen2.dart';
import 'package:hotel_app_ui/Product%20Details/details_screen3.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      body: SafeArea(
        child: Column(
          children: [
            // Header Section
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: screenWidth * 0.07,
                    top: screenHeight * 0.03,
                    right: screenWidth * 0.07,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Current Location",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xFF939393),
                        ),
                      ),
                      Image.asset(
                        "assets/images/notification.png",
                        width: screenWidth * 0.06,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: screenWidth * 0.05,
                    top: screenHeight * 0.01,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/location.png",
                        color: Color(0xFF4C4DDC),
                      ),
                      SizedBox(width: screenWidth * 0.02),
                      Text(
                        "Wallace, Australia",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // Category Chips
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.05,
                top: screenHeight * 0.04,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                      height: screenHeight * 0.05,
                      width: screenWidth * 0.22,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFF9F9F9),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3), // Shadow color
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/house2.png",
                            color: Color(0xFF939393),
                            height: screenHeight * 0.025,
                          ),
                          SizedBox(width: screenWidth * 0.02),
                          Text(
                            "Home",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                      height: screenHeight * 0.05,
                      width: screenWidth * 0.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFF9F9F9),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3), // Shadow color
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/building-3.png",
                            height: screenHeight * 0.025,
                            color: Color(0xFF939393),
                          ),
                          SizedBox(width: screenWidth * 0.02),
                          Text(
                            "Homestay",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                      height: screenHeight * 0.05,
                      width: screenWidth * 0.22,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFF9F9F9),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3), // Shadow color
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/buildings.png",
                            color: Color(0xFF939393),
                            height: screenHeight * 0.025,
                          ),
                          SizedBox(width: screenWidth * 0.02),
                          Text(
                            "Apart",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                      height: screenHeight * 0.05,
                      width: screenWidth * 0.22,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFF9F9F9),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3), // Shadow color
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/house2.png",
                            color: Color(0xFF939393),
                            height: screenHeight * 0.025,
                          ),
                          SizedBox(width: screenWidth * 0.02),
                          Text(
                            "Home",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(width: 20),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Near Location Section
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.05,
                right: screenWidth * 0.05,
                top: screenHeight * 0.02,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Near Location",
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
            SizedBox(height: 10),
            // Hotel Cards
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
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
                  SizedBox(width: screenWidth * 0.04),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen2(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
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
                  SizedBox(width: screenWidth * 0.04),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen3(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
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
                  SizedBox(width: 20),
                ],
              ),
            ),

            // Popular Hotel Section
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.05,
                top: screenHeight * 0.02,
                right: screenWidth * 0.05,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Hotel",
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
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

            // Popular Hotel Card
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: PopularHotelCard(
                imageAsset: "assets/images/Property1.png",
                title: "Asteria Hotel",
                location: "Willora NT 0872, Australia",
                price: "\$165.3",
                rating: "5.0",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
