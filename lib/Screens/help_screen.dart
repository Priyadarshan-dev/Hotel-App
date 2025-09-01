import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final faqs = [
      {
        "q": "How to cancel a booking?",
        "a": "Go to My Bookings → Select booking → Cancel.",
      },
      {
        "q": "How to change my profile details?",
        "a": "Go to Edit Profile in the profile section.",
      },
      {
        "q": "How to contact support?",
        "a": "Use the Contact Us option or call 1800-123-456.",
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: Column(
        children: [
          // Header bar
          Padding(
            padding: EdgeInsets.only(
              left: screenWidth * 0.05,
              right: screenWidth * 0.05,
              top: screenHeight * 0.07,

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
                  "Help & Support",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: screenWidth * 0.045,
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

          // FAQs List
          Expanded(
            child: ListView.builder(
              itemCount: faqs.length,
              itemBuilder: (context, index) {
                final faq = faqs[index];
                return ExpansionTile(
                  tilePadding: const EdgeInsets.symmetric(horizontal: 16),
                  title: Text(
                    faq["q"]!,
                    style: GoogleFonts.inter(fontWeight: FontWeight.w600),
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: Text(
                        faq["a"]!,
                        style: GoogleFonts.inter(color: Colors.black54),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
