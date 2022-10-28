import 'package:flutter/material.dart';



class Pays extends StatelessWidget {
  const Pays({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    print(height);
    print(height * 0.04);
    return Card(
      child: Column(
        children: [
          ListTile(
            leading:

              IconButton(
                icon: Icon(Icons.mobile_friendly_sharp),
                iconSize: 35,
                color: Colors.deepPurple,
                onPressed: () {},
              ),

            title: const Text("Mobile recharged"),
            subtitle: const Text("991234587"),
            trailing: const Text("₹400"),
          ),
          Row(
            children: [
              const Text("7 days ago"),
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
