void main (List<String> args) {
  var number = int.parse(args[0]);
  if (number > 0) {
    print("${number} is positive");
  } else if (number < 0) {
    print("${number} is negative");
  } else {
    print("${number} is zero");
  }
}
