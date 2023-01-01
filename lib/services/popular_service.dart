import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:food/models/popular/data_popular.dart';

class PopularService {
  final _dio = Dio();

  Future<Either<String, List<DataPopular>>> getDataPopular() async {
    Response response;

    try {
      response = await _dio
          .get("https://mocki.io/v1/b7bfbfbb-a366-4e25-a8a6-7e9f20feed80");

      List data = response.data['data'];

      final _result = data.map((e) => DataPopular.fromJson(e)).toList();

      return right(_result);
    } on DioError catch (err) {
      return left(err.message);
    }
  }
}
