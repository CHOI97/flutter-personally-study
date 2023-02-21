import 'package:flutter_study_thread/flutter_study_thread.dart' as flutter_study_thread;

/*
void main(List<String> arguments) {
  printOne();
  printTwo();
  printThree();
}
void printOne(){
  print('One');
}
void printThree(){
  print('Three');
}
void printTwo() async{
  Future.delayed(Duration(seconds: 1),(){ // <- Duration(seconds: 1) 1초만큼 지연후에 실행
    print('Future!!');
  });
  print('Two');
}*/

void main(List<String> arguments) {
  printOne();
  printTwo();
  printThree();
}
void printOne(){
  print('One');
}
void printThree(){
  print('Three');
}
void printTwo() async{
  await Future.delayed(Duration(seconds: 1),(){ // <- Duration(seconds: 1) 1초만큼 지연후에 실행
    print('Future!!');
  });
  print('Two'); // await 으로 인해 코드의 실행이 멈추고, main 다른 함수가 다 진행된 후에 await 구문부터 실행된다.
}

