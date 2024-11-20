import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/planet.dart';

class ApiService {
  static const String baseUrl = 'https://your-backend-api.com/api';

  static Future<List<Planet>> getPlanets() async {
    final response = await http.get(Uri.parse('$baseUrl/planets'));
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => Planet.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load planets');
    }
  }
}
