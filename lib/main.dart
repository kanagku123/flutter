
import 'package:fluent_ui/fluent_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key) ;


  @override
  Widget build(BuildContext context) {
    return const FluentApp(
      title: 'Windows App',
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget{
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
        color: const Color(0xff1A163D)
    );
  }
}
