import 'package:first_movie/model/movie/index.dart';
import 'package:flutter/material.dart';

class MovieDetail extends StatelessWidget {
  final MovieModel data;
  const MovieDetail(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(
                width: width,
                height: width * 1.5,
                child: Stack(
                  children: [
                    Image.network(
                      data.imgUrl,
                      width: width,
                      height: width,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
