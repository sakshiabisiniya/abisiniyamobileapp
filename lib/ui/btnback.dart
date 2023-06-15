import 'package:flutter/material.dart';

class ButtonBackgroundWidget extends StatelessWidget {
  const ButtonBackgroundWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                const Color(0xFFD9D9D9),
                const Color(0xFF54A415),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              tileMode: TileMode.clamp),
        ));
  }
}
