import 'dart:convert';
import '1-util.dart';

Future<String> getUserId() {
  return fetchUserData().then((user) => json.decode(user)['id']);
}
