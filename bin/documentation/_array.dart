import 'dart:math';
import 'dart:io';

void main() {
  //index 0, 1,  2,  3, 4,  5
  List<int> favnums = [4, 8, 15, 16, 23, 42];
  //reassign a value
  favnums[3] = 17;

  print(favnums[3]);
  //Get length property
  int countLenght = favnums.length;
  print('Lenght is $countLenght');
}
