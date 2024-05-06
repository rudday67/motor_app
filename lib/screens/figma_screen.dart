import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FigmaScreen extends StatelessWidget {
  const FigmaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 390,
        height: 844,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(3, 138, 255, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
            top: 302,
            left: 86,
            child: SvgPicture.asset('assets/images/pay.svg',
                semanticsLabel: 'vector'),
          ),
          Positioned(
              top: 260.6615295410156,
              left: 802.109130859375,
              child: Container(
                  width: 25,
                  height: 25,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, 0),
                  ),
                  child: const Stack(children: <Widget>[]))),
        ]));
  }
}
