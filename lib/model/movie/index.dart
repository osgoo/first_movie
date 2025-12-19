import 'package:json_annotation/json_annotation.dart';

part 'index.g.dart';

@JsonSerializable()
class MovieModel {
  String imgUrl, title;
  int id;
  int? publishedMin, durationMin;
  String? type, description;

  MovieModel({
    required this.imgUrl,
    required this.title,
    required this.id,
    this.publishedMin,
    this.durationMin,
    this.type,
    this.description,
  });

  static List<MovieModel> fromList(
    List<dynamic> data,
  ) =>
      data.map((e) => MovieModel.fromJson(e)).toList();

  factory MovieModel.fromJson(
    Map<String, dynamic> json,
  ) => _$MovieModelFromJson(json);

  /// Connect the generated [_$MovieModelToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() =>
      _$MovieModelToJson(this);
}
