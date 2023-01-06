import 'package:fluent_ui/fluent_ui.dart';

class CurrencyCard extends StatelessWidget {
  final String name;
  final IconData iconData;
  final bool isInverted;

  final int order;

  final _blackColor = const Color(0xff383131);

  const CurrencyCard({
    required this.name,
    required this.iconData,
    required this.isInverted,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0,order*-40),  //모든 카드에 offset 적용
      child: Container(
        clipBehavior: Clip.hardEdge, //튀어나온 테두리 제거
        decoration: BoxDecoration(
          color: isInverted ? Colors.white : _blackColor,
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
                      color: isInverted ? _blackColor : Colors.white,
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
                      color: isInverted
                          ? _blackColor.withOpacity(0.5)
                          : Colors.white.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
              Transform.scale(
                //아이콘 크기 위치,위치
                scale: 2.2,
                child: Transform.translate(
                  offset: const Offset(-5, 10),
                  child: Icon(
                    iconData,
                    color: isInverted ? _blackColor : Colors.white,
                    size: 88,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
