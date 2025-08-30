import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_app_ui/Components/popular_hotel_card.dart';

class PopularHotelScreen extends StatelessWidget {
  const PopularHotelScreen({super.key});

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
                    onTap: () {
                      Navigator.pop(context);
                    },
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
                    "Popular Hotels",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.042, 
                    ),
                  ),
                  Container(
                    height: screenWidth * 0.1, 
                    width: screenWidth * 0.1, 
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Image.asset("assets/images/setting.png"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.01),
              child: PopularHotelCard(
                imageAsset: "assets/images/Property1.png",
                title: "Asteria Hotel",
                location: "Willora NT 0872, Australia",
                price: "\$165.3",
                rating: "5.0",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.01),
              child: PopularHotelCard(
                imageAsset: "assets/images/Property2.png",
                title: "Asteria Hotel",
                location: "Willora NT 0872, Australia",
                price: "\$165.3",
                rating: "5.0",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.01),
              child: PopularHotelCard(
                imageAsset: "assets/images/Property3.png",
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
