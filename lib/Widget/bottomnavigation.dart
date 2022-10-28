import 'package:banking/Screen/history.dart';
import 'package:flutter/material.dart';

import '../Screen/homepage.dart';
import '../Screen/insurancelife.dart';
import '../Screen/stores.dart';
import '../Screen/wealth.dart';
class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({Key? key}) : super(key: key);

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {

 int gen =0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: gen,
      selectedItemColor: Colors.deepPurple,
      onTap: (int index) {
        print(index);
        setState(() {
          gen = index;
        });
        if(index == 0){
          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
        }
        if(index == 1){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Stores()));
        }
        if(index == 2){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Thirdbutton()));
        }
        if(index == 3){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Wealth()));
        }
        if(index == 4){
          Navigator.push(context, MaterialPageRoute(builder: (context) => History()));
        }
      },
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.house_siding_sharp), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.store_outlined), label: "Stores"),
        BottomNavigationBarItem(
            icon: Icon(Icons.security), label: "Insurance"),
        BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on_outlined), label: "Wealth"),
        BottomNavigationBarItem(icon: Icon(Icons.history), label: "History"),
      ],
    );
  }
}
