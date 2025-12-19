import 'package:flutter/material.dart';

class Movies extends StatefulWidget {
  const Movies({super.key});

  @override
  State<Movies> createState() => _MoviestState();
}

class _MoviestState extends State<Movies> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Киноны жагсаалт"),
    );
  }
}