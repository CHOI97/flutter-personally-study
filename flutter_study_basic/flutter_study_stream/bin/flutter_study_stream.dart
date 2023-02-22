import 'package:flutter_study_stream/flutter_study_stream.dart' as flutter_study_stream;
import 'dart:async';
/* 스트림 통신하기 */
Future<int> sumStream(Stream<int> stream) async{
  var sum = 0;
  await for (var value in stream){
    print('sumStream: $value');
    sum += value;
  }
  return sum;
}
Stream<int> countStream(int to) async*{ // async* -> lazy 와 비슷하다. 요청이 있을 때 까지 기다렸다가 필요할 때 처리한다.
  for(int i =1; i<=to; i++){
    print('countStream: $i');
    yield i; // yield -> return 과 유사, return 은 한번 리턴하면 함수가 종료되지만 yield 는 종료되지 않고, 열려있는 채로 필요할 때 연산 할 수 있다.
  }
}
main() async{
  var stream = countStream(10);
  var sum = await sumStream(stream);
  print(sum);
}
/*
countStream: 1
sumStream: 1
countStream: 2
sumStream: 2
countStream: 3
sumStream: 3
countStream: 4
sumStream: 4
countStream: 5
sumStream: 5
countStream: 6
sumStream: 6
countStream: 7
sumStream: 7
countStream: 8
sumStream: 8
countStream: 9
sumStream: 9
countStream: 10
sumStream: 10
55
*/
