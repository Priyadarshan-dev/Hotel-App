import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
              padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Image.asset("assets/images/arrowleft.png"),
                  ),
                  Text(
                    "Profile",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.042, // ~16px
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Image.asset("assets/images/Icon.png"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(screenWidth * 0.025),
              child: Image.asset(
                "assets/images/boy.png",
                height: screenHeight * 0.11,
                width: screenWidth * 0.24,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Darshan",
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w600,
                fontSize: screenWidth * 0.042, // ~16px
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.075,
                right: screenWidth * 0.075,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenWidth * 0.025),
                  color: Color(0xFFFFFFFF),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 6,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    buildMenuItem(
                      context,
                      'Edit Profile',
                      "assets/images/profile1.png",
                      "assets/images/arrowright.png",
                      () {},
                    ),
                    buildMenuItem(
                      context,
                      'Payment',
                      "assets/images/payment.png",
                      "assets/images/arrowright.png",
                      () {},
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.075,
                right: screenWidth * 0.075,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenWidth * 0.025),
                  color: Color(0xFFFFFFFF),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 6,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    buildMenuItem(
                      context,
                      'Notifications',
                      "assets/images/notification1.png",
                      "assets/images/arrowright.png",
                      () {},
                    ),
                    buildMenuItem(
                      context,
                      'Security',
                      "assets/images/security.png",
                      "assets/images/arrowright.png",
                      () {},
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.075,
                right: screenWidth * 0.075,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenWidth * 0.025),
                  color: Color(0xFFFFFFFF),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 6,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    buildMenuItem(
                      context,
                      'Help',
                      "assets/images/faqs.png",
                      "assets/images/arrowright.png",
                      () {},
                    ),
                    buildMenuItem(
                      context,
                      'Dark Mode',
                      "assets/images/profile.png",
                      "assets/images/arrowright.png",
                      () {},
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.075,
                right: screenWidth * 0.075,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenWidth * 0.025),
                  color: Color(0xFFFFFFFF),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 6,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    buildMenuItem(
                      context,
                      'Logout',
                      "assets/images/Logout.png",
                      "assets/images/arrowright.png",
                      () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildMenuItem(
  BuildContext context,
  String title,
  String leadingAsset,
  String trailingAsset,
  VoidCallback onTap,
) {
  final screenWidth = MediaQuery.of(context).size.width;

  return ListTile(
    leading: Image.asset(
      leadingAsset,
      height: screenWidth * 0.055,
      width: screenWidth * 0.055,
    ),
    title: Text(
      title,
      style: GoogleFonts.inter(
        fontWeight: FontWeight.w400,
        fontSize: screenWidth * 0.035,
      ),
    ),
    trailing: Image.asset(
      trailingAsset,
      height: screenWidth * 0.045,
      width: screenWidth * 0.045,
    ),
    onTap: onTap,
  );
}
