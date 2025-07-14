

import 'package:dio/dio.dart';
import 'package:fetch_api/models/item.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<List<Item>> fetchItems() async {
    final response = await _dio.get('https://jsonplaceholder.typicode.com/posts');
    final List data = response.data;
    return data.map((json) => Item.fromJson(json)).toList();
  }
}