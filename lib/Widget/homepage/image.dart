import 'package:flutter/material.dart';
class Images extends StatelessWidget {
  const Images({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Image.network(
          "https://cdn.grabon.in/gograbon/images/web-images/uploads/1618560328157/phonepe-coupons.jpg",
        ),
        const SizedBox(height: 10.0,),

      ],
    );
  }
}


// class Images extends StatefulWidget {
//   const Images({Key? key}) : super(key: key);
//
//   @override
//   State<Images> createState() => _ImagesState();
// }
//
// class _ImagesState extends State<Images> {
//   @override
//   Widget build(BuildContext context) {
