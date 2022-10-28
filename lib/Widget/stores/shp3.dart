import 'package:flutter/material.dart';
class Trends extends StatelessWidget {
  const Trends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return  Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "Last Paid 1 month ago",
            style: TextStyle(
              //fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Colors.black,
            ),
          ),
          ListTile(
            leading: Card(
              child: Image.asset("assets/images/tri1.jfif"),
            ),
            title: const Text(
              "Trends",
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: const Text("*5.0   4km .Closes at 10:00pm"),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),

          // ),
          Container(
            padding: const EdgeInsets.all(5.0),
            width: width*0.85,
            child: OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.arrow_upward),
              label: const Text(
                "pay now",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );

  }
}

