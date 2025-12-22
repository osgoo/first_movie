import 'package:first_movie/model/movie/index.dart';
import 'package:first_movie/screens/movie_detail.dart';
import 'package:flutter/material.dart';

class MovieSpecialCard extends StatelessWidget {
  final MovieModel data;
  const MovieSpecialCard(this.data, {super.key});

  void onCardTap(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => MovieDetail(data)),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.5;
    return InkWell(
      onTap: () => onCardTap(context),
      child: Container(
        height: width * 1.3,
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(data.imgUrl)),
        ),
        child: Icon(Icons.play_circle, color: Colors.grey, size: 60),
      ),
    );
  }
}
