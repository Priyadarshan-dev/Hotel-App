import 'package:flutter/material.dart';
import 'package:hotel_app_ui/Screens/book_mark_screen.dart';
import 'package:hotel_app_ui/Screens/home_screen.dart';
import 'package:hotel_app_ui/Screens/profile_screen.dart';
import 'package:hotel_app_ui/Screens/schedule_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomeScreen(),
    ScheduleScreen(),
    BookMarkScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80.0,
        child: BottomNavigationBar(
          backgroundColor: Color(0xFFFFFFFF),
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 10,
                ),
                child: Image.asset(
                  "assets/images/home2.png",
                  color: Color(0xFF939393),
                ),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 10,
                ),
                child: Image.asset(
                  "assets/images/calendar.png",
                  color: Color(0xFF939393),
                ),
              ),
              label: "Calendar",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 10,
                ),
                child: Image.asset(
                  "assets/images/bookmark.png",
                  color: Color(0xFF939393),
                ),
              ),
              label: "focus",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 10,
                ),
                child: Image.asset(
                  "assets/images/profile.png",
                  color: Color(0xFF939393),
                ),
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
