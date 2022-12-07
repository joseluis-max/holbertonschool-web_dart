import '4-util.dart';
import 'dart:convert';


Future<double> calculateTotal() async {
    try {
        double price = 0;
	
        final Map<String, dynamic> userData = json.decode(await fetchUserData());
        final String data = userData['id'];
        final List<dynamic> userOrder = json.decode(await fetchUserOrders(data));
        for (int idx = 0; idx < userOrder.length; idx++) {
            price += json.decode(await fetchProductPrice(userOrder[idx]));
        }
        return price;
    } catch (err) {
        print('error caught: $err');
        return -1;
    }
}