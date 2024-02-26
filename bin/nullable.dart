// TODO: Declare the two variables here
//A nullable String named name with the value 'Jane'.
//A nullable String named address with the value null.
String? name = 'Jane';
String? address;
// Tests your solution (Don't edit!):
void main() {
  try {
    if (name == 'Jane' && address == null) {
      // verify that "name" is nullable
      name = null;
      print('Success!');
    } else {
      print('Not quite right, try again!');
    }
  } catch (e) {
    print('Exception: ${e.runtimeType}');
  }
}
