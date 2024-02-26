Iterable<int> iterable = [1, 2, 3, 4, 5];

void main() {
  print(iterable.length); //5
  print(iterable.first); //1
  print(iterable.firstOrNull);//1
  print(iterable.indexed); // ((0, 1), (1, 2), (2, 3), (3, 4), (4, 5))
  print(iterable.isEmpty); //false
  print(iterable.isNotEmpty); //true
  print(iterable.nonNulls); //(1, 2, 3, 4, 5)
  try {
    print(iterable.single);
  } catch (e) {
    print(e.runtimeType); //StateError
  }
  print(iterable.firstWhere((element) => element == 2));
  //////////////////////////
  //////////
  ///////////////////////////////////////////
    const iterable2 = ['Salad', 'Popcorn', 'Toast'];
    for (final element in iterable2) {
      print(element);
  }
  print('The first element is ${iterable2.first}');
  print('The last element is ${iterable2.last}');
}


