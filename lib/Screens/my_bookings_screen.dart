import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_app_ui/Components/favourites_card.dart';

class BookingsScreen extends StatefulWidget {
  const BookingsScreen({super.key});

  @override
  State<BookingsScreen> createState() => _BookingsScreenState();
}

class _BookingsScreenState extends State<BookingsScreen> {
  List<Map<String, String>> bookings = [
    {
      "image": "assets/images/Property1.png",
      "title": "Luxury Resort",
      "location": "Goa, India",
      "price": "\$250",
      "rating": "4.8",
    },
    {
      "image": "assets/images/Property2.png",
      "title": "Beach Paradise",
      "location": "Maldives",
      "price": "\$350",
      "rating": "4.9",
    },
    {
      "image": "assets/images/Property3.png",
      "title": "City Comfort",
      "location": "Bangalore, India",
      "price": "\$120",
      "rating": "4.5",
    },
  ];

  void deleteBooking(int index) {
    setState(() {
      bookings.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: Column(
        children: [
          // Header
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
                  "My Bookings",
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

          // Bookings List
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: bookings.isEmpty
                  ? Center(
                      child: Text(
                        "No Bookings Yet",
                        style: GoogleFonts.inter(
                          fontSize: screenWidth * 0.04,
                          color: Colors.grey,
                        ),
                      ),
                    )
                  : ListView.builder(
                      itemCount: bookings.length,
                      itemBuilder: (context, index) {
                        final booking = bookings[index];
                        return FavoritesCard(
                          imageAsset: booking["image"]!,
                          title: booking["title"]!,
                          location: booking["location"]!,
                          price: booking["price"]!,
                          rating: booking["rating"]!,
                          deleteCard: (context) => deleteBooking(index),
                          onTap: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("Tapped ${booking["title"]}"),
                              ),
                            );
                          },
                        );
                      },
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
