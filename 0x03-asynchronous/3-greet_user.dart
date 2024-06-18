import '3-util.dart';
import 'dart:convert';


Future<String> greetUser() async {
  try {
    final userData = jsonDecode(await fetchUserData());
    return 'Hello ${userData['username']}';
  } catch (e) {
    return 'error caught: $e';
  }
}

Future<String> loginUser() async {
  final bool isLoggedIn = await checkCredentials();
  if (!isLoggedIn) {
    print('There is a user: $isLoggedIn');
    return 'Wrong credentials';
  }
  print('There is a user: $isLoggedIn');
  return await greetUser();
}