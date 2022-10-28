import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class Amz  extends StatelessWidget {
  const Amz ({Key? key}) : super(key: key);

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
            leading: Card(
              color: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: IconButton(
                icon: const Icon(Icons.wordpress_outlined),
                iconSize: 35,
                color: Colors.white,
                onPressed: () {},
              ),
            ),
            title: const Text("Paid to"),
            subtitle: const Text("AMAZON SELLER SERVICES PRIVATE LIMITED"),
            trailing: const Text("₹100"),
          ),
          Row(
            children: [
              const Text("16 Oct 2022"),
              const      Expanded(
                  child: Text("")),
              const Text(
                "Debited from",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
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

