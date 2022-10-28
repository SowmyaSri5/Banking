import 'package:flutter/material.dart';
class Upibank extends StatelessWidget {
  const Upibank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
      color: Colors.lightBlueAccent,
      child: Container(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: const [
            Text("My UPI ID:sowmya@ybl"),
            Expanded(child: Text("")),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}


