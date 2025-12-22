import 'package:first_movie/model/movie/index.dart';
import 'package:flutter/material.dart';

class MovieSpecialCard extends StatelessWidget {
  final MovieModel data;
  const MovieSpecialCard(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.5;
    return Container(
      height: width,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(data.imgUrl),
        ),
      ),
      child: Icon(Icons.play_circle),
    );
  }
}
