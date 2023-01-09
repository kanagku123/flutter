Future<String> download() {
  Future<String> value = Future.delayed(
    Duration(seconds: 5),
      (){
      return "사과";
    }
  );
  print("끝");
  return(value);
}

main() async {
  String value =await download();
  print(value);

}
