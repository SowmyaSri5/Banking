import 'package:flutter/material.dart';
class Portfolios extends StatelessWidget {
  const Portfolios({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
        child: Column(
          children: [
            ListTile(
              leading: IconButton(
                icon: const Icon(Icons.lightbulb_outline_rounded),
                iconSize: 50,
                color: Colors.deepPurple,
                onPressed: () {},
              ),
              title: const Text(
                "Smart Portfolios",
                style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
              ),
              subtitle: const Text(
                "Expert managed portfolios of mutual funds. Best suited for long-term wealth creation.",style: TextStyle(
                fontSize: 12,
              ),),
            ),
            Card(
              color: Colors.blueGrey,
              child: Column(
                children: [
                  ListTile(
                    title: const Text("High Growth Portfolio"),
                    subtitle: const Text("by ICICI Prudential"),
                    trailing: IconButton(
                      icon: const Icon(Icons.arrow_forward_ios),
                      iconSize: 20,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Card(
                child: Row(
                  children: [
                    Column(
                      children: const [
                        Text("Returns \n 24.45% p.a \n as on 31-08-22"),
                      ],
                    ),
                    const SizedBox(
                      width: 130,
                    ),
                    Column(
                      children: const [
                        Text("Risk \n 4% lower \n Vs Nifty 50 TRI"),
                      ],
                    ),
                  ],
                )),
            const Text("Learn More About Fund Packs",textAlign: TextAlign.left,style: TextStyle(
              color: Colors.deepPurple,

            ),),
          ],
        ));
  }
}


