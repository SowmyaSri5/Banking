import 'package:flutter/material.dart';
class PhonePe  extends StatelessWidget {
  const PhonePe ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List phone_wallet = [
      {
        "wallet_icon": Icons.wallet,
        "wallet_name": "PhonePe \n Wallet",
      },
      {
        "wallet_icon": Icons.wallet_giftcard_outlined,
        "wallet_name": "Rewards",
      },
      {
        "wallet_icon": Icons.camera_outlined,
        "wallet_name": "Refer &\n Get 100rs",
      },
    ];
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Container(
        height: height*0.16,
        padding: const EdgeInsets.only(
            bottom: 15.0, top: 10.0, right: 5.0, left: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: phone_wallet.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                      height: height*0.16,
                      width: width*0.31,
                      child: Card(
                        color: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.only(
                                  top: 5.0,
                                  left: 10.0,
                                  right: 10.0,
                                  bottom: 2.0),
                              child: IconButton(
                                icon: Icon(phone_wallet[index]["wallet_icon"]),
                                iconSize: 35,
                                color: Colors.white,
                                onPressed: () {},
                              ),
                            ),
                            Text(
                              phone_wallet[index]["wallet_name"],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color:Colors.white,

                              ),

                            ),
                          ],
                        ),
                      ));
                }),
          ],
        ));

  }
}


