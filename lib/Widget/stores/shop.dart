import 'package:flutter/material.dart';
class Pantloons  extends StatelessWidget {
  const Pantloons ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return  Card(
      child: Column(
        children: [
          const Text(
            "Last Paid more than 6 months ago",
            style: TextStyle(
              //fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Colors.black,
            ),
          ),
          ListTile(
            leading: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Image.asset("assets/images/sri2.jpg"),
            ),

            title: const Text(
              "Pantaloons-PVP Mall",
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: const Text("*4.0   50.3km .Closes at 9:30pm"),
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

