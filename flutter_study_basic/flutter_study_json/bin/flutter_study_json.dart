import 'package:flutter_study_json/flutter_study_json.dart' as flutter_study_json;
import 'dart:convert';
/*void main(List<String> arguments) {
  var jsonString = ''' 
  [
    {"score" :40},
    {"score" :80}    
  ]
  '''; // json 형태의 문자열
  var scores = jsonDecode(jsonString); // jsonDecode 함수는 json 형태의 데이터를 dynamic 형식의 리스트로 변환해서 반환해준다.
  print(scores is List); // scores 변수가 list 면 ture 아닐 경우에는 false 를 반환한다.
  var firstScore = scores[0]; // scores 리스트에서 첫번째 값을 firstScore 에 저장한다.
  print(firstScore is Map); //  key, value 형태의 Map
  print(firstScore['score'] == 40);
}*/
// true
// true
// true

void main(){
  var scores = [
    {'score': 40},
    {'score': 80},
    {'score': 100, 'overtime': true, 'special_guest':null}
  ];
  var jsonText = jsonEncode(scores);
  print(jsonText ==
  '[{"score":40},{"score":80},'
  '{"score":100,"overtime":true,'
  '"special_guest":null}]');
  print(jsonText);
} // -> key 값은 "" 큰 따옴표로 묶이고, value 는 '' 작은 따옴표로 묶인다. 띄어쓰기 할 경우 오류!
// true