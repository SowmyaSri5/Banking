import 'package:flutter/material.dart';
class Imglst extends StatelessWidget {
  const Imglst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          "https://st1.bgr.in/wp-content/uploads/2017/08/phonepe-reliance-jio-offer.jpg##image/jpg",),
        const SizedBox(height: 8.0,),

      ],
    );
  }
}

