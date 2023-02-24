import 'package:flutter_study_class/flutter_study_class.dart' as flutter_study_class;

void main(List<String> arguments) {
  Car bmw = Car(320,100000,'BMW'); // new 키워드 생략
  Car benz = Car(250,70000,'BENZ');
  Car ford = Car(200,80000,'FORD');

  bmw.saleCar();
  bmw.saleCar();
  bmw.saleCar();

  print("${bmw.name} price is ${bmw.price}");
}
class Car{ // Car 클래스
  int maxSpeed;
  num price;
  String name;

  Car(this.maxSpeed, this.price, this.name);

  num saleCar(){ // 10% 할인 메소드
    price = price*0.9;
    return price;
  }
}
// 72900.0
