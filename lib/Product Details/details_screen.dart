import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
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
                      "Detail",
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
                      child: Image.asset("assets/images/Icon.png"),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.035), // ~30px
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  "assets/images/Property1.png",
                  height: screenHeight * 0.27,
                  width: screenWidth * 0.9083,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: screenWidth * 0.05, // ~20px
                  right: screenWidth * 0.05, // ~20px
                  top: screenHeight * 0.025, // ~20px
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: screenHeight * 0.045,
                      width: screenWidth * 0.2805,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFFECECEC),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/wifi-square.png"),
                          SizedBox(width: screenWidth * 0.02), // ~10px
                          Text(
                            "Free Wifi",
                            style: TextStyle(
                              fontSize: screenWidth * 0.032, // ~12px
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: screenHeight * 0.045,
                      width: screenWidth * 0.3694,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFFECECEC),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/coffee.png"),
                          SizedBox(width: screenWidth * 0.02), // ~10px
                          Text(
                            "Free Breakfast",
                            style: TextStyle(
                              fontSize: screenWidth * 0.032, // ~12px
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: screenHeight * 0.045,
                      width: screenWidth * 0.1917,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFFECECEC),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/Icon1.png"),
                          SizedBox(width: screenWidth * 0.012), // ~5px
                          Text(
                            "5.0",
                            style: TextStyle(
                              fontSize: screenWidth * 0.032, // ~12px
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
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
                      "The Aston Vill Hotel",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth * 0.042, // ~16px
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "\$200.7",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w700,
                            fontSize: screenWidth * 0.042, // ~16px
                            color: Color(0xFF4C4DDC),
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.012), // ~5px
                        Text(
                          "/night",
                          style: GoogleFonts.inter(
                            fontSize: screenWidth * 0.037, // ~14px
                            color: Color(0xFF939393),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: screenWidth * 0.05, // ~20px
                  top: screenHeight * 0.012, // ~10px
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/location.png",
                      color: Color(0xFF4C4DDC),
                      width: screenWidth * 0.05, // ~20px
                    ),
                    SizedBox(width: screenWidth * 0.02), // ~8px
                    Expanded(
                      child: Text(
                        "Alice Springs NT 0870, Australia",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: screenWidth * 0.032, // ~12px
                          color: Color(0xFF939393),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: screenWidth * 0.05, // ~20px
                  top: screenHeight * 0.012, // ~10px
                ),
                child: Row(
                  children: [
                    Text(
                      "Description",
                      style: GoogleFonts.inter(
                        fontSize: screenWidth * 0.037, // ~14px
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: screenWidth * 0.05, // ~20px
                  top: screenHeight * 0.012, // ~10px
                ),
                child: Column(
                  children: [
                    Text(
                      "Aston Hotel, Alice Springs NT 0870, Australia is a modern\nhotel, elegant 5 star hotel overlooking the sea. perfect for romantic, charming",
                      style: GoogleFonts.inter(
                        fontSize: screenWidth * 0.032, // ~12px
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF939393),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: screenWidth * 0.05, // ~20px
                  top: screenHeight * 0.012, // ~10px
                ),
                child: Row(
                  children: [
                    Text(
                      "Preview",
                      style: GoogleFonts.inter(
                        fontSize: screenWidth * 0.037, // ~14px
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: screenWidth * 0.05, // ~20px
                  right: screenWidth * 0.05, // ~20px
                  top: screenHeight * 0.025, // ~20px
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        "assets/images/Property4.png",
                        height: screenHeight * 0.08,
                        width: screenWidth * 0.2722,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        "assets/images/Property5.png",
                        height: screenHeight * 0.08,
                        width: screenWidth * 0.2722,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        "assets/images/Property6.png",
                        height: screenHeight * 0.08,
                        width: screenWidth * 0.2722,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(
                  top: screenHeight * 0.04, // ~50px
                  bottom: screenHeight * 0.02, // Add bottom padding
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: screenHeight * 0.07,
                    width: screenWidth * 0.9083,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xFF4C4DDC),
                    ),
                    child: Center(
                      child: Text(
                        "Booking Now",
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: screenWidth * 0.042, // ~16px
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
      ),
    );
  }
}
