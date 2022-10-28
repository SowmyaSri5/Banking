import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../bottomnavigation.dart';
class VehicleIns extends StatelessWidget {
  const VehicleIns({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List motor_list = [
      {
        "motor_icon": MdiIcons.bike,
        "motor_name": "Bike",
        "motor_highlight": "Popular",
      },
      {
        "motor_icon": MdiIcons.car,
        "motor_name": "Car",
        "motor_highlight": " ",
      },
      {
        "motor_icon": Icons.auto_awesome,
        "motor_name": "Domestic \n Travel",
        "motor_highlight": " ",
      },
      {
        "motor_icon": MdiIcons.taxi,
        "motor_name": "International \n Travel",
        "motor_highlight": "New",
      },
    ];
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  "Vehicle Insurance",
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              const SizedBox(
                height: 0.1,
              ),
              Card(
                color: Colors.blueGrey,
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  width: width*0.95,
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_upward),
                    label: const Text(
                      "Enter Vehicle Number",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  "Or Browse By Vehicle Type",
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                  height: height*0.13,
                  padding: const EdgeInsets.only(
                      bottom: 15.0, top: 7.0, right: 5.0, left: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ListView.builder(
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          itemCount: motor_list.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            AlignmentDirectional alignment;
                            return SizedBox(
                              height:  height*0.13,
                              width: width*0.22,
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // Card(
                                  //   color: Colors.deepPurple,
                                  //   shape: RoundedRectangleBorder(
                                  //       borderRadius: BorderRadius.circular(15)),
                                  Container(
                                    height:  height*0.06,
                                    width: width*0.37,
                                    alignment: Alignment.topCenter,
                                    child: Stack(

                                      children: [
                                        IconButton(
                                          icon:
                                          Icon(motor_list[index]["motor_icon"]),
                                          iconSize: 35,
                                          color: Colors.deepPurple,
                                          onPressed: () {},
                                        ),
                                        motor_list[index]["motor_highlight"]
                                            .toString()
                                            .length >=
                                            2
                                            ? Positioned(
                                          child: Card(

                                            color: Colors.red,
                                            child: Container(
                                                padding: const EdgeInsets.all(2.0),
                                                child: Text(
                                                  motor_list[index]
                                                  ["motor_highlight"],
                                                  style: const TextStyle(
                                                      fontSize: 8,
                                                      color: Colors.white),
                                                )),
                                          ),
                                        )
                                            : Container()
                                      ],
                                    ),
                                  ),

                                  Text(
                                    motor_list[index]["motor_name"],
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            );
                          })
                    ],
                  )),
            ],
          )),
    );
  }
}



