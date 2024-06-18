import 'package:http/http.dart';
import 'dart:convert';

Future<String> printRmCharacters() async {
  try {
    final response =
        await get(Uri.parse('https://rickandmortyapi.com/api/character'));
    if (response.statusCode != 200) {
      throw Exception('Failed to load characters');
    }
    final result = jsonDecode(response.body);
    final List<dynamic> characters = result['results'];
    for (final character in characters) {
      print(character['name']);
    }
    return 'Success';
  } catch (e) {
    return 'error caught: $e';
  }
}
