import 'package:flutter/material.dart';
import 'package:lesson31/model/popular_model.dart';

class MyPopularSeciton extends StatelessWidget {
  MyPopularSeciton({super.key});
  List<PopularMovies> moviesList = [];

  void _getInitialInfo() {
    moviesList = PopularMovies.getMovies();
  }

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();
    return Container(
      height: 180,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: 10),
        itemCount: moviesList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              moviesList[index].image,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
