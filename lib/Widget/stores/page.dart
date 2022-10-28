import 'package:flutter/material.dart';
class Sts extends StatelessWidget {
  const Sts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const SizedBox(
          height: 8,
        ),
        //Icon(Icons.search_outlined),
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search_outlined),
            label: const Text("Search by store name or phone number"),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(150),
            ),
          ),
        ),

      ],);
  }
}

