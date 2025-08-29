import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
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
        height: MediaQuery.of(context).size.height * 0.11,
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          boxShadow: [
            BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(0.1)),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
          child: GNav(
            onTabChange: _navigateBottomBar,
            selectedIndex: _selectedIndex,
            tabBackgroundColor: Color(0xFF4C4DDC).withOpacity(0.2),
            activeColor: Color(0xFF4C4DDC),
            color: Color(0xFF939393),
            gap: 8,
            padding: EdgeInsets.all(12),
            duration: Duration(milliseconds: 300),
            tabs: [
              GButton(
                icon: Icons.home,// You can replace with Image.asset if needed
                text: "Home",
              ),
              GButton(icon: Icons.calendar_month, text: "Schedule"),
              GButton(icon: Icons.favorite_border, text: "Bookmark"),
              GButton(icon: Icons.person_outline, text: "Profile"),
            ],
          ),
        ),
      ),
    );
  }
}
/*
 bottomNaviagtionBar: Gnav
  BottomNavigationBar(
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
 */