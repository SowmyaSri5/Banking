import 'package:flutter/material.dart';
class Sponsored extends StatelessWidget {
  const Sponsored({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    List sponsored_items = [
      {
        "sponsored_icon":
        "https://branditechture.agency/brand-logos/wp-content/uploads/wpdm-cache/Screenshot_20220621-202824-900x0.png",
        "sponsored_name": "Zomato"
      },
      {
        "sponsored_icon":
        "https://globalprimenews.com/wp-content/uploads/2020/05/IMG_20200513_143930-777x437.png",
        "sponsored_name": "Kotak811"
      },
      {
        "sponsored_icon":
        "https://1000logos.net/wp-content/uploads/2020/07/Ajio-Logo.png",
        "sponsored_name": "Ajio"
      },
      {
        "sponsored_icon":
        "https://1000logos.net/wp-content/uploads/2022/08/Myntra-Logo.png",
        "sponsored_name": "Myntra"
      },
    ];
    return Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                "Sponsored Links",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Container(
                height: height * 0.15,
                padding: const EdgeInsets.only(
                    bottom: 5.0, top: 5.0, right: 5.0, left: 5.0),
                //padding: EdgeInsets.all(5.0),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ListView.builder(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: sponsored_items.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            // height: height * 0.20,
                            // width: width * 0.20,
                            height: height*0.12,
                            width: width*0.22,
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Card(
                                  // color: Colors.deepPurple,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Container(
                                    // height: 70,
                                    // width: 70,
                                    height: height*0.07,
                                    width: width*0.10,
                                    alignment: Alignment.topCenter,
                                    child: IconButton(
                                      iconSize: 70,
                                      onPressed: () {},
                                      icon: Image.network(
                                        sponsored_items[index]
                                        ["sponsored_icon"],
                                        fit: BoxFit.fill,
                                        height: height*0.15,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  sponsored_items[index]["sponsored_name"],
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          );
                        })
                  ],
                )),
          ],
        ),
      ),
    );
  }
}


// class Sponsored extends StatefulWidget {
//   const Sponsored({Key? key}) : super(key: key);
//
//   @override
//   State<Sponsored> createState() => _SponsoredState();
// }
//
// class _SponsoredState extends State<Sponsored> {

