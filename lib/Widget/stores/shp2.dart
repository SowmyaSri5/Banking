import 'package:flutter/material.dart';
class Loreal  extends StatelessWidget {
  const Loreal ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Card(
      child: Column(
        children: [
          const Text(
            "Last Paid more than 3 months ago",
            style: TextStyle(
              //fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Colors.black,
            ),
          ),
          ListTile(
            leading: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: Image.asset("assets/images/loreal1.jpg"),
            ),
            title: const Text(
              "Loreal Saloon",
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: const Text("*4.5   5.3km .Closes at 9:00pm"),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          Container(
            padding: const EdgeInsets.all(9.0),
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

