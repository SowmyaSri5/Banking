import 'package:flutter/material.dart';
class Money extends StatelessWidget {
  const Money({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Column(
        children: [
          ListTile(
            leading: IconButton(
              icon: const Icon(Icons.collections_bookmark_outlined),
              iconSize: 35,
              color: Colors.deepPurple,
              onPressed: () {},
            ),
            title: const Text("Learn how to grow your money",style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),),
            subtitle: const Text("Start your investment journey here",style: TextStyle(
              fontSize: 12,
            ),),
            trailing: IconButton(
              icon: const Icon(Icons.arrow_forward_ios_outlined),
              iconSize: 20,
              //color: Colors.deepPurple,
              onPressed: () {},
            ),
          )

        ],
      ),

    );
  }
}

