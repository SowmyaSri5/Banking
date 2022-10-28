import 'package:flutter/material.dart';
class Pick  extends StatelessWidget {
  const Pick ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: IconButton(
              icon: const Icon(Icons.explore),
              iconSize: 35,
              color: Colors.deepPurple,
              onPressed: () {},
            ),
            title: const Text("Explore all funds",style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),),
            subtitle: const Text("Pick a fund on your own",style: TextStyle(
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

