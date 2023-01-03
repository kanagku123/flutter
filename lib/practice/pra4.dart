

enum Status{
  approved, // 승인
  pending, // 대기
  rejected, //거절
}

void main(){
  Status status = Status.approved; //오타방지

  if(status == Status.approved){
    print('승인');
  }else if(status==Status.pending){
    print("대기");
  }else{
    print("거절");
  }

  int result= addNumber(y:20,x:101);
  int result2= addNumber(x: 90, y: 100, z: 880 );
  print('sum : ${result+result2}');

  Operation operation = substract;
  result =operation(10,20,30);
  print(result);

  int re3 =calculate(30, 40, 50, add);
  print(re3);
  int re4 =calculate(40, 50, 60, substract);

}

typedef Operation = int Function(int x ,int y, int z);


int calculate(int x,int y,int z,Operation operation){return operation(x,y,z);}



int add(int x,int y,int z) => x+y+z;
int substract(int x,int y,int z) => x-y-z;

int addNumber({ required int x, required int y, int z = 0}
    )=> x+y+z;