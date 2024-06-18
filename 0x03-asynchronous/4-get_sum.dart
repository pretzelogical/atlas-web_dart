import 'dart:convert';
import '4-util.dart';

Future<num> calculateTotal() async {
  try {
    final Map userData = jsonDecode(await fetchUserData());
    final List userOrders = jsonDecode(await fetchUserOrders(userData['id']));
    double orderTotal = 0;
    for (final order in userOrders) {
      orderTotal += jsonDecode(await fetchProductPrice(order));
    }
    return orderTotal;
  } catch (e) {
    return -1;
  }
}
