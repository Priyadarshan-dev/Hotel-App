import 'package:flutter/material.dart';

class ScheduleProvider with ChangeNotifier {
  List<DateTime> _selectedDates = [];
  List<Map<String, dynamic>> _scheduledCards = [];

  List<DateTime> get selectedDates => _selectedDates;
  List<Map<String, dynamic>> get scheduledCards => _scheduledCards;

  void setSelectedDates(List<DateTime> dates) {
    _selectedDates = dates;
    notifyListeners();
  }

  void addScheduledCard(Map<String, dynamic> card) {
    _scheduledCards.add(card);
    notifyListeners();
  }

  void clearScheduledCards() {
    _scheduledCards.clear();
    notifyListeners();
  }

  void removeScheduledCard(int index) {
    if (index >= 0 && index < _scheduledCards.length) {
      _scheduledCards.removeAt(index);
      notifyListeners();
    }
  }

  bool isSameDay(DateTime a, DateTime b) {
    return a.year == b.year && a.month == b.month && a.day == b.day;
  }
}