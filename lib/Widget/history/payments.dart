import 'package:flutter/material.dart';
class Paid extends StatelessWidget {
  const Paid ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
  
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Colors.deepPurple,
              child: IconButton(
                icon: const Icon(Icons.arrow_upward_outlined),
                iconSize: 35,
                color: Colors.white,
                onPressed: () {},
              ),
            ),
            title: const Text("Paid to"),
            subtitle: const Text("Harshitha Kl"),
            trailing: const Text("₹5,000"),
          ),
          Row(
            children: [
              const Text("2 days ago"),
              const Expanded(
                  child: Text("")),
              const Text("Debited from",style: TextStyle(
                fontSize: 12,
              ),),
              Image.network(
                "https://png.pngitem.com/pimgs/s/23-238440_axis-bank-png-logo-of-axis-bank-transparent.png",
                height: height*0.05,
                width: width*0.05,
              ),
            ],
          ),
        ],
      ),
    );


  }
}


