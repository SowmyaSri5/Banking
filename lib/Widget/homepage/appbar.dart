import 'package:flutter/material.dart';
class AppBarNew extends StatelessWidget {
  const AppBarNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Address"),
      leading: const Card(
        child: Icon(
          Icons.person,
          color: Colors.deepPurple,
        ),
      ),
      actions: const [

        Icon(Icons.document_scanner_outlined),
        Icon(Icons.notifications),
        Icon(Icons.question_mark_rounded),
      ],
      backgroundColor: Colors.deepPurple,
    );
  }
}


// class AppBarNew extends StatefulWidget {
//   const AppBarNew({Key? key}) : super(key: key);
//
//   @override
//   State<AppBarNew> createState() => _AppBarNewState();
// }
//
// class _AppBarNewState extends State<AppBarNew> {
//
//   @override
//   Widget build(BuildContext context) {
