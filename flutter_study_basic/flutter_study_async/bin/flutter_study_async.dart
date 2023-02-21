import 'package:flutter_study_async/flutter_study_async.dart' as flutter_study_async;

/* 비동기 처리
void main(List<String> arguments) {
 checkVersion();
 print('end process');
}
Future checkVersion() async{    <- async 키워드로 비동기로 만든다. / 비동기 함수 이람 앞에는 Future( 값이 여러 개 일 경우 Stream) 클래스를 지정한다.
 var version = await lookUpVersion(); <- 언제 끝날지 모르는 작업 앞에 await을 붙인다.
 print(version);
}

int lookUpVersion(){
 return 12;
} */
// end process
// 12



void main() async {
  await getVersionName().then((value) => {print(value)}); // <- 비동기 함수가 반환 하는 값을 처리하려면 then()함수를 이용한다.
  print('end process');
}

Future<String> getVersionName() async {
  var versionName = await lookUpVersionName();
  return versionName;
}

String lookUpVersionName() {
  return 'Android Q';
}
// Android Q
// end process