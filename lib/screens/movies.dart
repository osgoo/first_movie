import 'dart:convert';

import 'package:first_movie/model/movie/index.dart';
import 'package:first_movie/widgets/movie_special_card.dart';
import 'package:flutter/material.dart';

class Movies extends StatefulWidget {
  const Movies({super.key});

  @override
  State<Movies> createState() => _MoviestState();
}

class _MoviestState extends State<Movies> {
  Future<List<MovieModel>> getData() async {
    String res = await DefaultAssetBundle.of(
      context,
    ).loadString("assets/movies.json");
    return MovieModel.fromList(jsonDecode(res));
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getData(),
      builder: ((context, snapshot) {
        if (snapshot.hasData) {
          final specialData = snapshot.data!.length > 3
              ? snapshot.data!.sublist(0, 3)
              : snapshot.data;
          return Column(
            children: [
              Text("Шилдэг кино"),
              SizedBox(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      specialData!.length,
                      ((index) => MovieSpecialCard(
                        specialData[index],
                      )),
                    ),
                  ),
                ),
              ),
              Text(
                "Бүх кинонууд",
                style: TextStyle(color: Colors.white),
              ),
            ],
          );
        } else {
          return Center(
            child: SizedBox(
              child: CircularProgressIndicator(),
            ),
          );
        }
      }),
    );
  }
}
