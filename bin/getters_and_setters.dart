class InvalidPriceException {}

class ShoppingCart {
  List<double> _prices = [];

  // TODO: Add a "total" getter here:
double get total => _prices.fold<double>(0, (previousValue, element) => previousValue + element);
  // TODO: Add a "prices" setter here:
  // A setter that replaces the list with a new one,
  // as long as the new list doesn't contain any negative prices 
  // (in which case the setter should throw an InvalidPriceException).

  set prices(List<double> list){
    if(list.any((element) => element.isNegative)){
      throw InvalidPriceException();
    }
    _prices = list;
  }
}

// Tests your solution (Don't edit!):
void main() {
  var foundException = false;

  try {
    final cart = ShoppingCart();
    cart.prices = [12.0, 12.0, -23.0];
  } on InvalidPriceException {
    foundException = true;
  } catch (e) {
    print(
        'Tried setting a negative price and received a ${e.runtimeType} \n instead of an InvalidPriceException.');
    return;
  }

  if (!foundException) {
    print(
        'Tried setting a negative price \n and didn\'t get an InvalidPriceException.');
    return;
  }

  final secondCart = ShoppingCart();

  try {
    secondCart.prices = [1.0, 2.0, 3.0];
  } catch (e) {
    print(
        'Tried setting prices with a valid list, \n but received an exception: ${e.runtimeType}.');
    return;
  }

  if (secondCart._prices.length != 3) {
    print(
        'Tried setting prices with a list of three values, \n but _prices ended up having length ${secondCart._prices.length}.');
    return;
  }

  if (secondCart._prices[0] != 1.0 ||
      secondCart._prices[1] != 2.0 ||
      secondCart._prices[2] != 3.0) {
    final vals = secondCart._prices.map((p) => p.toString()).join(', ');
    print(
        'Tried setting prices with a list of three values (1, 2, 3), \n but incorrect ones ended up in the price list ($vals) .');
    return;
  }

  var sum = 0.0;

  try {
    sum = secondCart.total;
  } catch (e) {
    print('Tried to get total, but received an exception: ${e.runtimeType}.');
    return;
  }

  if (sum != 6.0) {
    print(
        'After setting prices to (1, 2, 3), total returned $sum instead of 6.');
    return;
  }

  print('Success!');
}
