import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const baseUrl = 'https://dummyjson.com';

  Future<List<dynamic>> getTukangList() async {
    final res = await http.get(Uri.parse('$baseUrl/users'));
    if (res.statusCode == 200) {
      return jsonDecode(res.body)['users'];
    } else {
      throw Exception('Failed to load tukang');
    }
  }

  Future<List<dynamic>> getPromoList() async {
    final res =
        await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon?limit=5'));
    if (res.statusCode == 200) {
      return jsonDecode(res.body)['results'];
    } else {
      throw Exception('Failed to load promo');
    }
  }
}
