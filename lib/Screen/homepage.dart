import 'package:flutter/material.dart';
import 'package:banking/Widget/bottomnavigation.dart';

import '../Widget/homepage/appbar.dart';
import '../Widget/homepage/image.dart';
import '../Widget/homepage/insurance.dart';
import '../Widget/homepage/links.dart';
import '../Widget/homepage/product_list.dart';
import '../Widget/homepage/sub.dart';
import '../Widget/homepage/switch.dart';
import '../Widget/homepage/tranfermoney.dart';
import '../Widget/homepage/travel.dart';
import '../Widget/homepage/upiid.dart';
import '../Widget/homepage/wallet.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70.0), child: AppBarNew ()),

      //appBar: AppBarNew(),



      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(5.0),
        physics: const ClampingScrollPhysics(),
        children: const [
          Images(),
          TransferMoney(),
          // Upibank(),
          PhonePe(),
          ListProduct(),
          Sponsored(),
          Insurance(),
          Booking(),
          Switchtype(),
          Subscribe(),
        ],
      ),
      bottomNavigationBar: const Bottomnavigation(),

    );
  }
}


