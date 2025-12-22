import 'package:first_movie/model/movie/index.dart';
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final MovieModel data;
  const MovieCard(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    final width =
        MediaQuery.of(context).size.width / 3;
    return Column(
      children: [
        Container(
          width: width,
          height: width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(data.imgUrl),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          width: width,
          child: Text(
            data.title,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
