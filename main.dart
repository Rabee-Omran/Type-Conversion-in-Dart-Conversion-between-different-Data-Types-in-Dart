void main() {
  Map data = {
    "name": "product 1",
    "price": "20.99",
    "quantity": "2",
    "online": "FALSE"
  };

  // string -> double
  double price = double.tryParse(data["price"]) ?? 0.0;
  // print(data["price"].runtimeType);
  // print(price.runtimeType);
  // print(price);

  //string -> int
  int quantity = int.tryParse(data['quantity']) ?? 0;
  // print(quantity.runtimeType);
  // print(quantity);

  // string -> bool
  bool online = (data["online"] as String).parseBool();
  // print(online);

  // int, double, bool -> string
  int number = 0;
  double numberDouble = 0.2;
  bool isActive = true;
  // print(number.toString());
  // print(isActive.toString());
  // print(numberDouble.toStringAsFixed(2));

  //int -> double
  // print(number.toDouble());

  // double -> int

  // print(numberDouble.toInt());
  // print(numberDouble.truncate());
  // print(numberDouble.toStringAsFixed(0));
  // print(numberDouble.ceil());
  // print(numberDouble.floor());
  print(numberDouble.round());
}

extension BoolParsing on String {
  bool parseBool() {
    return this.toLowerCase() == "true";
  }
}
