import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectCard extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String location;
  final String price;
  final String rating;
  final VoidCallback? onTap;

  const SelectCard({
    super.key,
    required this.imageAsset,
    required this.title,
    required this.location,
    required this.price,
    required this.rating,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: screenHeight * 0.135,
        width: screenWidth * 0.9083,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
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
          children: [
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.025),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  imageAsset,
                  height: screenHeight * 0.11,
                  width: screenHeight * 0.11,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      right: screenWidth * 0.025,
                      left: screenWidth * 0.025,
                      top: screenHeight * 0.020,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            title,
                            style: GoogleFonts.inter(
                              fontSize: screenWidth * 0.037,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.02),
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/Icon1.png",
                              height: screenHeight * 0.02,
                            ),
                            SizedBox(width: screenWidth * 0.02),
                            Text(
                              rating,
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: screenWidth * 0.032,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: screenWidth * 0.025,
                      top: screenHeight * 0.01,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            location,
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w400,
                              fontSize: screenWidth * 0.032,
                              color: Color(0xFF939393),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: screenWidth * 0.025,
                      top: screenHeight * 0.01,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "\$$price",
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w700,
                            fontSize: screenWidth * 0.037,
                            color: Color(0xFF4C4DDC),
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.01),
                        Text(
                          "/night",
                          style: GoogleFonts.inter(
                            fontSize: screenWidth * 0.032,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF939393),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
