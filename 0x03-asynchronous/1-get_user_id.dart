import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
  final userData = jsonDecode(await fetchUserData());
  return userData['id'];
}