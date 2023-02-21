import 'package:flutter_study_basic/flutter_study_basic.dart' as flutter_study_basic;

int nullVariable() => -3;

void main(List<String> arguments) {
  int? nullVariable = 1;
  List<int?> listNullVariable = [2,null,4];
  List<int?> nullsList;
  int a = nullVariable;
  int b = listNullVariable.first!;
  int c = nullVariable!.abs();
  print ("a is $a");
  print ("b is $b");
  print ("c is $c");
}
