//mixin
class Tall{
  final double height =1.99;
}
class Strong{
  final double strenght = 1500.99;
}
class Quick{
  void runQuick(){
    print("ruuuuun");
  }
}


//inheritance 상속

enum Team{red,blue}

class Human{
  final String name;

  Human({required this.name});

  void sayHello(){
    print("Hello, my name is $name");
  }
}


class Player extends Human with Quick {
  //super는 Human을 가리킨다.
  final Team team;

  Player({
    required this.team,
    required String name,
  }) : super(name:name);

  @override
  void sayHello(){
    super.sayHello();
    print("and i play for${team}");

  }
}

class Horse with Strong,Quick{}

void main(){
  var player = Player(
      team: Team.red,
      name: "nkk",
  );

  player.sayHello();

  player.runQuick();

  var horse = Horse();
  horse.runQuick();

}