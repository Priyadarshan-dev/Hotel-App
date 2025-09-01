import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_app_ui/Categories/appartment.dart';
import 'package:hotel_app_ui/Categories/home_stay.dart';
import 'package:hotel_app_ui/Categories/resort.dart';
import 'package:hotel_app_ui/Components/card.dart';
import 'package:hotel_app_ui/Components/popular_hotel_card.dart';
import 'package:hotel_app_ui/Product%20Details/details_screen.dart';
import 'package:hotel_app_ui/Product%20Details/details_screen2.dart';
import 'package:hotel_app_ui/Product%20Details/details_screen3.dart';
import 'package:hotel_app_ui/Screens/hotel_screen.dart';
import 'package:hotel_app_ui/Screens/popular_hotel_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedCategoryIndex = 0;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
                    // Left side - Location
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Current Location",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: screenWidth * 0.032,
                            color: Color(0xFF939393),
                          ),
                        ),
                        const SizedBox(height: 4),

                        Padding(
                          padding: EdgeInsets.only(top: screenHeight * 0.01),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/location.png",
                                color: Color(0xFF4C4DDC),
                                width: screenWidth * 0.05,
                              ),
                              SizedBox(width: screenWidth * 0.02),
                              Text(
                                "Wallace, Australia",
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: screenWidth * 0.037,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          height: screenWidth * 0.1,
                          width: screenWidth * 0.1,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Image.asset("assets/images/notification.png"),
                        ),
                        Positioned(
                          right: 8,
                          top: 6,
                          child: Container(
                            height: 8,
                            width: 8,
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Category Chips
              Padding(
                padding: EdgeInsets.only(
                  left: screenWidth * 0.03,
                  top: screenHeight * 0.04,
                  right: screenWidth * 0.02,
                ),
                child: // Add this state variable at the top of your state class
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Home Category
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedCategoryIndex = 0;
                            print("Selected index: $_selectedCategoryIndex");
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(
                            vertical: screenHeight * 0.01,
                            horizontal: screenWidth * 0.02,
                          ),
                          height: screenHeight * 0.05,
                          width: screenWidth * 0.22,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: _selectedCategoryIndex == 0
                                ? Color(0xFF4C4DDC)
                                : Color(0xFFFFFFFF),
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/house2.png",
                                color: _selectedCategoryIndex == 0
                                    ? Colors.white
                                    : Color(0xFF939393),
                                height: screenHeight * 0.025,
                              ),
                              SizedBox(width: screenWidth * 0.02),
                              Text(
                                "Home",
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  fontSize: screenWidth * 0.037,
                                  color: _selectedCategoryIndex == 0
                                      ? Colors.white
                                      : Color(0xFF939393),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedCategoryIndex = 1;
                            print("Selected index: $_selectedCategoryIndex");
                          });
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomeStay()),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(
                            vertical: screenHeight * 0.01,
                            horizontal: screenWidth * 0.02,
                          ),
                          height: screenHeight * 0.05,
                          width: screenWidth * 0.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: _selectedCategoryIndex == 1
                                ? Color(0xFF4C4DDC)
                                : Color(0xFFFFFFFF),
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/building-3.png",
                                color: _selectedCategoryIndex == 1
                                    ? Colors.white
                                    : Color(0xFF939393),
                                height: screenHeight * 0.025,
                              ),
                              SizedBox(width: screenWidth * 0.02),
                              Text(
                                "Homestay",
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  fontSize: screenWidth * 0.037,
                                  color: _selectedCategoryIndex == 1
                                      ? Colors.white
                                      : Color(0xFF939393),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Apart Category
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedCategoryIndex = 2;
                            print("Selected index: $_selectedCategoryIndex");
                          });
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Appartment(),
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(
                            vertical: screenHeight * 0.01,
                            horizontal: screenWidth * 0.02,
                          ),
                          height: screenHeight * 0.05,
                          width: screenWidth * 0.22,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: _selectedCategoryIndex == 2
                                ? Color(0xFF4C4DDC)
                                : Color(0xFFFFFFFF),
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/buildings.png",
                                color: _selectedCategoryIndex == 2
                                    ? Colors.white
                                    : Color(0xFF939393),
                                height: screenHeight * 0.025,
                              ),
                              SizedBox(width: screenWidth * 0.02),
                              Text(
                                "Apart",
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  fontSize: screenWidth * 0.037,
                                  color: _selectedCategoryIndex == 2
                                      ? Colors.white
                                      : Color(0xFF939393),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Villa Category (Changed from duplicate Home)
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedCategoryIndex = 3;
                            print("Selected index: $_selectedCategoryIndex");
                          });
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Resort()),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(
                            vertical: screenHeight * 0.01,
                            horizontal: screenWidth * 0.02,
                          ),
                          height: screenHeight * 0.05,
                          width: screenWidth * 0.22,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: _selectedCategoryIndex == 3
                                ? Color(0xFF4C4DDC)
                                : Color(0xFFFFFFFF),
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/house2.png",
                                color: _selectedCategoryIndex == 3
                                    ? Colors.white
                                    : Color(0xFF939393),
                                height: screenHeight * 0.025,
                              ),
                              SizedBox(width: screenWidth * 0.02),
                              Text(
                                "Resort",
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  fontSize: screenWidth * 0.037,
                                  color: _selectedCategoryIndex == 3
                                      ? Colors.white
                                      : Color(0xFF939393),
                                ),
                              ),
                            ],
                          ),
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
                        fontSize: screenWidth * 0.042, // ~16px on most devices
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HotelScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "See all",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize:
                              screenWidth * 0.037, // ~14px on most devices
                          color: Color(0xFF4C4DDC),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              // Hotel Cards
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: screenWidth * 0.05),
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
                        margin: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.01,
                        ),
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
                        margin: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.01,
                        ),
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
                        margin: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.01,
                        ),
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
                    SizedBox(width: screenWidth * 0.05),
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
                        fontSize: screenWidth * 0.042, // ~16px on most devices
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PopularHotelScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "See all",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize:
                              screenWidth * 0.037, // ~14px on most devices
                          color: Color(0xFF4C4DDC),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Popular Hotel Card
              Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.01),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailsScreen()),
                    );
                  },
                  child: PopularHotelCard(
                    imageAsset: "assets/images/Property1.png",
                    title: "Asteria Hotel",
                    location: "Willora NT 0872, Australia",
                    price: "\$165.3",
                    rating: "5.0",
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
