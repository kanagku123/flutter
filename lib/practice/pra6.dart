import 'package:pts2/practice/pra5.dart';

enum Team { red, blue }


mixin CanRun {
  void run() {
    print("뛰는 중...");
  }
}

mixin CanJump {
  void jump() {
    print("점프하는 중...");
  }
}

mixin CanShoot {
  void shoot() {
    print("슈팅하는 중...");
  }
}

class Human {
  final String name;

  Human({required this.name});

  void sayHello() {
    print("Hello, my name is $name");
  }
  void play() {
    sayHello();
  }
}

class Striker extends Human with CanRun, CanJump, CanShoot {
  Striker({required super.name});

  @override
  void play() {
    sayHello();
    run();
    shoot();
    jump();
  }
}

class Runner extends Human with CanRun, CanJump {
  Runner({required super.name});

  @override
  void play() {
    sayHello();
    run();
    jump();
  }
}


main() {
  var runner = Runner(name: "Kang");
  runner.play();

  var striker = Striker(name: "na");
  striker.play();

}

//
// import 'dart:convert';
//
// void main() {
//
//   var scores = [
//     {'score': 40},
//     {'score': 80},
//     {'score': 100, 'overtime': true, 'special_guest': null},
//   ];
//
//   var jsonText = jsonEncode(scores);
//   print(jsonText == '[{"score":40},{"score":80},{"score":100,"overtime":true,"special_guest":null }]');
//
//   print(scores);
//   print(jsonText);
// }
