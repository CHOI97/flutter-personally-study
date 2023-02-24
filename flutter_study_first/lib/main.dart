import 'package:flutter/material.dart'; // 다른 다트 클래스나 pubspec, yaml 파일에서 내려받은 패키지를 불러올 때 사용

void main() {
  runApp(const MyApp()); // main 에서 runApp 함수를 호출 binding.dart 클래스에 정의 되어있으며, 플러터 앱을 시작하는 역할
}

class MyApp extends StatelessWidget { // 상태가 변경되지 않는 위젯을 상속받았다는 의미
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) { // 어떠한 위젯을 만들 것인지 정의
    return MaterialApp( // 그림을 그리는 도화지, title, theme, home등이 정의되어있다.
      title: 'Hello Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Text('hello\nFlutter'),
    );
  }
}

class MyHomePage extends StatefulWidget { // 상태가 변하는 위젯, 매번 갱신이 필요한 동적인 위젯
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
