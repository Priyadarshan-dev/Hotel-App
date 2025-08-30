import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_app_ui/Components/favourites_card.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:hotel_app_ui/Provider/book_mark_provider.dart';

class BookMarkScreen extends StatelessWidget {
  const BookMarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: Consumer<BookMarkProvider>(
        builder: (context, bookmark, child) {
          if (bookmark.favorites.isEmpty) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset(
                  'assets/images/animation.json',
                  repeat: true,
                  animate: true,
                  height: 100,
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Center(
                    child: Text(
                      "No saved hotels yet! Start exploring and\n        tap the ❤️ to save your favorites",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            );
          }
          return SafeArea(
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
                        "Book Marks",
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
                SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(
                    itemCount: bookmark.favorites.length,
                    itemBuilder: (context, index) {
                      final hotel = bookmark.favorites[index];
                      return ListTile(
                        title: FavoritesCard(
                          imageAsset: hotel.image,
                          title: hotel.title,
                          location: hotel.location,
                          price: hotel.price,
                          rating: hotel.rating,
                          deleteCard: (context) =>
                              bookmark.removeFavorite(hotel),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
