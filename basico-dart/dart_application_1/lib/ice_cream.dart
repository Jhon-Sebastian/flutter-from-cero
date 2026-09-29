class IceCream {
  String flavor = 'Unknown';
  bool sugarFree = false;
  double price = 4.99;
  String size = 'Medium';

  void charge() {
    print('The price of the ice cream with $size is: \$$price');
  }
}
