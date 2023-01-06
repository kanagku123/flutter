

import 'package:fluent_ui/fluent_ui.dart';

class CurrencyCard extends StatelessWidget {
  final String name;
  final IconData iconData;

  const CurrencyCard(this.name,  this.iconData);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge, //튀어나온 테두리 제거
      decoration: BoxDecoration(
        color: Color(0xff383131),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 10,
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
              ],
            ),
            Transform.scale(
              //아이콘 크기 위치,위치
              scale: 2.2,
              child: Transform.translate(
                offset: const Offset(-5, 10),
                child: const Icon(
                  iconData,
                  color: Colors.white,
                  size: 88,
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }



}
