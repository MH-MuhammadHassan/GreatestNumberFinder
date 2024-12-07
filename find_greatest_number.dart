import 'dart:io';

void main() {
  // Prompt the user to enter three numbers
  stdout.write('Enter the first number (a): ');
  int a = int.parse(stdin.readLineSync()!);

  stdout.write('Enter the second number (b): ');
  int b = int.parse(stdin.readLineSync()!);

  stdout.write('Enter the third number (c): ');
  int c = int.parse(stdin.readLineSync()!);

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
}
