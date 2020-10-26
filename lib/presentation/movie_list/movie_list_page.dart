import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_app/presentation/movie_list/movie_list_notifier.dart';

final movieListProvider = ChangeNotifierProvider(
  (_) {
    return MovieListNotifier();
  },
);

class MovieList extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final movieList = useProvider(movieListProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('映画リスト'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(movieList.movies[index]),
          );
        },
        itemCount: movieList.movies.length,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          movieList.addMovie();
        },
      ),
    );
  }
}
