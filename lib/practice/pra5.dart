abstract class Human {
  void walk();
}

enum Team { red, blue }

enum XP { begin, medium, pro }

class Player extends Human {
  //final String name;
  String name;
  XP xp /*, age*/;

  Team team;

  void walk() {
    print("Walking");
  }


/*
  Player(
      {required this.name,
      required this.xp,
      required this.team,
      required this.age});

  Player.creatBluePlayer({
    required String name,
    required int age,
  })  : this.age = age,
        this.name = name,
        this.team = "blue",
        this.xp = 0;

  Player.creatRedPlayer(String name, int age)
      : this.age = age,
        this.name = name,
        this.team = "red",
        this.xp = 1;

  */
/*

  Player.fromJson(Map<String, dynamic> playerJason)
      : name = playerJason['name'],
        age = playerJason['age'],
        xp = playerJason['xp'],
        team = playerJason['team'];
*/

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void hello() {
    print("my name is $name , my team : $team, my xp : $xp`");
  }
}

class Coach extends Human{
  void walk(){
    print('Coach Walking');
  }
}

void main() {
  /*var player1 = Player(
    name: "skrudrb",
    xp: 1500,
    team: "red",
    age: 13,
  );
  var player2 = Player(
    name: "나경규",
    xp: 1000,
    team: "blue",
    age: 16,
  );

  var player3 = Player.creatBluePlayer(name: 'ann', age: 21);
  var player4 =Player.creatRedPlayer("andy", 30);


  player1.hello();
  player2.hello();


  player3.hello();
  player4.hello();
*/

  /*var apiData = [
    {
      "name":'nkk',
      "age":15,
      "team":'red',
      "xp":1
    },
    {
      "name":'nku',
      "age":33,
      "team":'blue',
      "xp":2
    },{
      "name":'nbh',
      "age":44,
      "team":'gtr',
      "xp":3
    },
  ];

  apiData.forEach((playJson) {
    var player = Player.fromJson(playJson);
    player.hello();
  });
*/

  var nkk = Player(name: "nkf", xp: XP.begin, team: Team.red)
    /*nkk.name="kang";
  nkk.xp=12;
  nkk.team="blue";
*/
    ..name = "kang"
    ..xp = XP.begin
    ..team = Team.red
    ..hello();

  var kang = nkk
    ..name = "zx"
    ..xp = XP.pro
    ..team = Team.blue
    ..hello();
}
