class MyClass {
  final int anInt;
  final String aString;
  final double aDouble;

  MyClass(this.anInt, this.aString, this.aDouble);

// TODO: Create the constructor here.
}


// Tests your solution (Don't edit!):
void main() {
  final errs = <String>[];

  try {
    final obj = MyClass(1, 'two', 3);

    if (obj.anInt != 1) {
      errs.add('Called MyClass(1, \'two\', 3) and got an object with anInt of ${obj.anInt} \n instead of the expected value (1).');
    }

    if (obj.anInt != 1) {
      errs.add('Called MyClass(1, \'two\', 3) and got an object with aString of \'${obj.aString}\' \n instead of the expected value (\'two\').');
    }

    if (obj.anInt != 1) {
      errs.add('Called MyClass(1, \'two\', 3) and got an object with aDouble of ${obj.aDouble} \n instead of the expected value (3).');
    }
  } catch (e) {
    print('Called MyClass(1, \'two\', 3) and got an exception \n of type ${e.runtimeType}.');
  }

  if (errs.isEmpty) {
    print('Success!');
  } else {
    errs.forEach(print);
  }
}