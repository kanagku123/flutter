/**
클래스


객체 object : 저장 공간에 할당되어 값을 가지거나 식별자에 의해 참조되는 공간. (변수, 함수, 메서드)

인스턴스 instance : 객체를 메모리에 작성하는 것.

클래스 class : 인스턴스의 설계도.

속성 property : 클래스 안에 표현되는 속성.

 **/
/****/

/**
import 'dart:collection';
import 'dart:math' as math;
void main(){
 var rand = math.Random();
 HashSet<int> looto= HashSet();

 while(looto.length<10){
  looto.add(rand.nextInt(100)+1);
 }
 print(looto);
}
 **/
String say(String from, String msg, [String? device]) {

  var result = '$from says $msg';

  if (device != null) {

    result = '$result with a $device';

  }

  return result;
}


void main(){

  assert(say('Bob', 'Howdy', 'smoke signal') == 'Bob says Howdy with a smoke signal');

  assert(2 + 3 == 5);

}
