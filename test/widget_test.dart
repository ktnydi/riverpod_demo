import 'package:flutter_test/flutter_test.dart';
import 'package:riverpod_app/presentation/movie_list/movie_list_notifier.dart';

void main() {
  group('MovieList', () {
    test('movies should be added', () {
      final movieListNotifier = MovieListNotifier();

      movieListNotifier.addMovie();

      expect(movieListNotifier.movies.length, 4);
    });
  });
}
