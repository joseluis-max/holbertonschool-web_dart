import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
  try {
    var data = json.decode(await fetchUserData());
    return "Hello ${data['username']}";
  } catch (e) {
    print('error caught: $e');
    throw "";
  }
}

Future<String> loginUser() async {
try {
  if (await checkCredentials()) {
    print("There is a user: true");
    return await greetUser();
  } else {
    print("There is a user: false");
    return "Wrong credentials";
  }
} catch (e) {
  return "error caugth $e";
}
}