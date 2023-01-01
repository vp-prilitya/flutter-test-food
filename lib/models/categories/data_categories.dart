import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_categories.freezed.dart';
part 'data_categories.g.dart';

@freezed
class DataCategories with _$DataCategories {
  factory DataCategories({
    String? id,
    String? desc,
    String? image,
  }) = _DataCategories;

  factory DataCategories.fromJson(Map<String, dynamic> json) =>
      _$DataCategoriesFromJson(json);
}
