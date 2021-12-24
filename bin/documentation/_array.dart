import 'dart:math';
import 'dart:io';

void main() {
  //index 0, 1,  2,  3, 4,  5
  List<int> favnums = [4, 8, 15, 16, 23, 42];
  //reassign a value
  favnums[3] = 17;
  print(favnums[3]);
  //Get length property
  //string interpolation
  print('Lenght is ${favnums.length}');

  //If the expression is a single identifier (variable),
  //the brackets ({}) can be omitted.
  print('Single identifier (variable) $favnums');
}
