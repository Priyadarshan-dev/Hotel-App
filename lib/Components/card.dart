import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_app_ui/Model/card_model.dart';
import 'package:hotel_app_ui/Provider/book_mark_provider.dart';
import 'package:provider/provider.dart';

class HotelCard extends StatefulWidget {
  final String imageAsset;
  final String title;
  final String location;
  final String price;
  final String rating;
  final double screenWidth;
  final double screenHeight;
  final VoidCallback? onTap;

  const HotelCard({
    super.key,
    required this.imageAsset,
    required this.title,
    required this.location,
    required this.price,
    required this.rating,
    required this.screenWidth,
    required this.screenHeight,
    this.onTap,
  });

  @override
  State<HotelCard> createState() => _HotelCardState();
}

class _HotelCardState extends State<HotelCard> {
  Color iconColor = Colors.white;
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: widget.screenHeight * 0.3575,
        width: widget.screenWidth * 0.7139,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xFFFFFFFF),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(12),
                  ),
                  child: Image.asset(
                    widget.imageAsset,
                    height: widget.screenHeight * 0.2275,
                    width: widget.screenWidth * 0.7139,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 15,
                  top: 15,
                  child: Consumer<BookMarkProvider>(
                    builder: (context, bookmark, child) {
                      final isFav = bookmark.favorites.any(
                        (item) => item.title == widget.title,
                      );

                      return GestureDetector(
                        onTap: () {
                          final hotel = CardModel(
                            title: widget.title,
                            location: widget.location,
                            price: widget.price,
                            rating: widget.rating,
                            image: widget.imageAsset,
                          );

                          if (isFav) {
                            bookmark.removeFavorite(hotel);
                          } else {
                            bookmark.addFavorite(hotel);
                          }
                        },
                        child: Container(
                          height: widget.screenHeight * 0.038,
                          width: widget.screenWidth * 0.082,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white,
                          ),
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: widget.screenHeight * 0.024,
                            width: widget.screenWidth * 0.051,
                            child: Image.asset(
                              isFav
                                  ? "assets/images/heart1.png"
                                  : "assets/images/heart.png",
                              color: isFav ? Colors.redAccent : Colors.grey,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          widget.title,
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            fontSize: widget.screenWidth * 0.037, // ~14px
                            color: Colors.black,
                            // overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      SizedBox(width: widget.screenWidth * 0.02),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/Icon1.png",
                            height: widget.screenHeight * 0.02,
                          ),
                          SizedBox(width: widget.screenWidth * 0.02),
                          Text(
                            widget.rating,
                            style: GoogleFonts.plusJakartaSans(
                              fontWeight: FontWeight.w700,
                              fontSize: widget.screenWidth * 0.032, // ~12px
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: widget.screenHeight * 0.005),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          widget.location,
                          style: GoogleFonts.inter(
                            color: Color(0xFF939393),
                            fontWeight: FontWeight.w400,
                            fontSize: widget.screenWidth * 0.032, // ~12px
                            // overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: widget.screenHeight * 0.01),
                Padding(
                  padding: EdgeInsets.only(left: 15, top: 15),
                  child: Row(
                    children: [
                      Text(
                        '\$${widget.price}',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: widget.screenWidth * 0.037, // ~14px
                          color: Color(0xFF4C4DDC),
                        ),
                      ),
                      SizedBox(width: widget.screenWidth * 0.01),
                      Text(
                        '/night',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: widget.screenWidth * 0.032, // ~12px
                          color: Color(0xFF939393),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
