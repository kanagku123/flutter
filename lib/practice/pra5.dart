class Player{
  final String name;
  int xp;

  Player(this.name,this.xp);

  void hello(){
    print("my name is $name , my xp : $xp.`");
}

}

void main() {
  var player1 = Player("skrudrb", 1500);
  var player2 = Player("나경규", 12000);
  player1.hello();
  player2.hello();


}
