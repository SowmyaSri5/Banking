import 'package:flutter/material.dart';
class Createwealth extends StatelessWidget {
  const Createwealth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Card(
      child: Container(
        height: height*0.18,
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            ListTile(
              title: const Text(
                "Create wealth with SIP",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: const Text(
                  "4.5cr+ SIP investments every month.Grow your money with SIP now."),
              trailing: Image.network(
                "https://st.depositphotos.com/2627021/3210/i/600/depositphotos_32108625-stock-photo-hands-of-a-child-taking.jpg",fit: BoxFit.contain,),
            ),
            ElevatedButton(

              onPressed: () {
              },
              child: const Text("START A SIP   >"),
            ),
          ],
        ),
      ),
    );
  }
}

