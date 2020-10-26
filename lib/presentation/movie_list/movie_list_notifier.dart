import 'package:flutter/material.dart';

class MovieListNotifier extends ChangeNotifier {
  List<String> movies = [
    '鬼滅の刃',
    'ドラゴンボール',
    'ワンピース',
  ];

  void addMovie() {
    final newMovies = [...movies];
    newMovies.add('キングダム');
    this.movies = newMovies;
    notifyListeners();
  }
}
