import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hotel_app_ui/Provider/book_mark_provider.dart';

class BookMarkScreen extends StatelessWidget {
  const BookMarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<BookMarkProvider>(
        builder: (context, bookmark, child) {
          if (bookmark.favorites.isEmpty) {
            return const Center(child: Text("No favorites yet"));
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
                          color: Color(0xFFECECEC),
                        ),
                        child: Image.asset("assets/images/arrowleft.png"),
                      ),
                      Text("Book Marks"),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xFFECECEC),
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
                        leading: Image.asset(
                          hotel.image,
                          width: 60,
                          fit: BoxFit.cover,
                        ),
                        title: Text(hotel.title),
                        subtitle: Text("${hotel.location} • ${hotel.rating} ⭐"),
                        trailing: Text("\$${hotel.price}/night"),
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
