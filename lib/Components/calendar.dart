import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  final Function(List<DateTime>)? onDatesSelected;

  const Calendar({super.key, this.onDatesSelected});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  List<DateTime> selectedDates = [];

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      if (selectedDates.any((d) => isSameDay(d, day))) {
        selectedDates.removeWhere((d) => isSameDay(d, day));
      } else {
        selectedDates.add(day);
      }
    });

    // Notify parent about selected dates
    if (widget.onDatesSelected != null) {
      widget.onDatesSelected!(selectedDates);
    }
  }

  bool isSameDay(DateTime a, DateTime b) {
    return a.year == b.year && a.month == b.month && a.day == b.day;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Container(
          height: screenHeight * 0.38,
          width: screenWidth * 0.9083,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xFFF2F2F2),
          ),
          child: TableCalendar(
            rowHeight: 43,
            headerStyle: const HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true,
            ),
            availableGestures: AvailableGestures.all,
            focusedDay: DateTime.now(),
            firstDay: DateTime.utc(2015, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            onDaySelected: _onDaySelected,
            selectedDayPredicate: (day) {
              return selectedDates.any((d) => isSameDay(d, day));
            },
          ),
        ),
      ],
    );
  }
}
