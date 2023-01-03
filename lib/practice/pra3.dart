


void main(){
  List<String> blackPink = ['제니','로제','지수','리사'];
  print(blackPink.length);
  print(blackPink.indexOf('로제')); // indexOf 인덱스 위치

  //Map
  // key/value
  Map<String,String> dictonary = {
    'Harry':'해리포터',
    'Hi':'해리포터',
    'Hey':'해리포터',
    'Hehe':'해리포터',
  };

  dictonary.addAll({'hoho':'바보'});

  print(dictonary);

  print(dictonary.keys);
  print(dictonary.length);
  print(dictonary.values);
  print(dictonary.entries);
  print(dictonary.isEmpty);

  //set
  final Set<String> names = {
    'Nkk','flu','amm',
  };
  print(names);
  print(names.contains('Nkk'));
  print(names.runtimeType);

  int number = 10;

  if(number>10){
    print('10보다 큼');
  }else if (number == 10){
    print('10이닷!');
  }else{
    print('10보다 작다');
  }

  switch(number % 3){
    case 0 :
      print("나머지 0");
      break;
    case 1 :
      print("나머지 1");
      break;
    case 2 :
      print("나머지 2");
      break;

  }
  int i=0;
  int total = 0;
  List<int> numbers=[1,2,3,4,5,6,7];
  for (number in numbers){
    print(number);

  }

  for(i;i<numbers.length;i++){
    total += numbers[i];
    print(total);
  }

  //while ~ break

  total = 0;
  while(total<10){
    total+=1;
    print(total);
    if(total==5){
      print('나가!');
      break;
      //continue;
    }
  }












}