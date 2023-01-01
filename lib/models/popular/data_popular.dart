import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_popular.freezed.dart';
part 'data_popular.g.dart';

@freezed
class DataPopular with _$DataPopular {
  factory DataPopular({
    String? id,
    String? desc,
    String? image,
    int? price,
    bool? available,
  }) = _DataPopular;

  factory DataPopular.fromJson(Map<String, dynamic> json) =>
      _$DataPopularFromJson(json);
}
