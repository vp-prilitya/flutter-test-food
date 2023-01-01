import 'package:dartz/dartz.dart';
import 'package:food/models/categories/data_categories.dart';
import 'package:dio/dio.dart';

class ServiceCategories {
  final _dio = Dio();

  Future<Either<String, List<DataCategories>>> getCategory() async {
    Response response;

    try {
      response = await _dio
          .get("https://mocki.io/v1/4f6c484b-2920-4474-a17f-cf3bc5fe2e62");

      List data = response.data['data'];

      final _result = data.map((e) => DataCategories.fromJson(e)).toList();

      return right(_result);
    } on DioError catch (err) {
      return left(err.message);
    }
  }
}
