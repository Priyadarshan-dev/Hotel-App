import 'package:flutter/material.dart';
import 'package:hotel_app_ui/Model/card_model.dart';

class BookMarkProvider extends ChangeNotifier {
  final List<CardModel> _favorites = [];

  List<CardModel> get favorites => _favorites;

  void addFavorite(CardModel card) {
    if (!_favorites.any((item) => item.title == card.title)) {
      _favorites.add(card);
      notifyListeners();
    }
  }

  void removeFavorite(CardModel card) {
    _favorites.removeWhere((item) => item.title == card.title);
    notifyListeners();
  }
}
