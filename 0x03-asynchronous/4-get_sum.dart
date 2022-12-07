import "4-util.dart";
import "dart:convert";

Future<double> calculateTotal() async {
  try {
    // Call fetchUserData
    return fetchUserData().then((user) {
      // Convert string response to json
      String id = json.decode(user)["id"];
      // Asynchronously call fetchUserOrders with id of user from fetchUserData
      return fetchUserOrders(id).then((products) async {
        double totalPrice = 0.0;
        // Convert string response to json and loop through product list
        for (String product in json.decode(products)) {
          // As each product is fetched, call fetchProductPrice with product
          await fetchProductPrice(product).then((price) {
            // Convert string response to json and add price to total
            totalPrice += json.decode(price);
          });
        }
        return totalPrice;
      });
    });
  } catch (e) {
    return -1;
  }
}
