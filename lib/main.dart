import 'package:flutter/material.dart';
import 'package:hotel_app_ui/Components/bottom_navbar.dart';
import 'package:hotel_app_ui/Provider/book_mark_provider.dart';
import 'package:hotel_app_ui/Provider/schedule_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BookMarkProvider()),
        ChangeNotifierProvider(create: (_) => ScheduleProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}
