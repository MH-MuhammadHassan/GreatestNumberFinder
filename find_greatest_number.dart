import 'dart:io';

void main() {
  try {
    // Prompt the user to enter three numbers
    stdout.write('Enter the first number (a): ');
    int? a = _getValidInteger();

    stdout.write('Enter the second number (b): ');
    int? b = _getValidInteger();

    stdout.write('Enter the third number (c): ');
    int? c = _getValidInteger();

    if (a == null || b == null || c == null) {
      print('One or more inputs are invalid. Please try again.');
      return;
    }

    // Find the greatest number using conditional statements
    if (a > b && a > c) {
      print('a ($a) is the greatest number');
    } else if (b > a && b > c) {
      print('b ($b) is the greatest number');
    } else if (c > a && c > b) {
      print('c ($c) is the greatest number');
    } else {
      print('There is a tie among the numbers.');
    }
  } catch (e) {
    print('An unexpected error occurred: $e');
  }
}


int? _getValidInteger() {
  try {
    String? input = stdin.readLineSync();
    if (input == null || input.isEmpty) {
      print('Input cannot be empty.');
      return null;
    }
    return int.parse(input);
  } catch (e) {
    print('Invalid input. Please enter a valid integer.');
    return null;
  }
}
