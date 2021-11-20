import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Services'),
        backgroundColor: Color.fromRGBO(224, 87, 6, 1),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Doctor",
                    style: TextStyle(
                        fontFamily: "Monserrat",
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color.fromRGBO(129, 134, 158, 1),
                        letterSpacing: 1),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Color.fromRGBO(255, 240, 232, 1),
                                    minimumSize: Size(size.width * 0.25, 78),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: BorderSide(
                                            color: Color.fromRGBO(
                                                224, 87, 6, 1)))),
                                onPressed: () {
                                  print('ok2');
                                },
                                child: SvgPicture.asset(
                                  "assets/svg/heart.svg",
                                  height: size.width * 0.13,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  "By Name",
                                  style: TextStyle(
                                      color: Color.fromRGBO(123, 127, 158, 1),
                                      fontFamily: "Monserrat",
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Color.fromRGBO(255, 240, 232, 1),
                                    minimumSize: Size(size.width * 0.25, 78),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: BorderSide(
                                            color: Color.fromRGBO(
                                                224, 87, 6, 1)))),
                                onPressed: () {
                                  print('ok2');
                                },
                                child: SvgPicture.asset(
                                  "assets/svg/heartbeat.svg",
                                  height: size.width * 0.13,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  "By Specialist",
                                  style: TextStyle(
                                      color: Color.fromRGBO(123, 127, 158, 1),
                                      fontFamily: "Monserrat",
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Color.fromRGBO(255, 240, 232, 1),
                                    minimumSize: Size(size.width * 0.25, 78),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: BorderSide(
                                            color: Color.fromRGBO(
                                                224, 87, 6, 1)))),
                                onPressed: () {
                                  print('ok2');
                                },
                                child: SvgPicture.asset(
                                  "assets/svg/map.svg",
                                  height: size.width * 0.13,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  "Near Me",
                                  style: TextStyle(
                                      color: Color.fromRGBO(123, 127, 158, 1),
                                      fontFamily: "Monserrat",
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ]),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Others",
                    style: TextStyle(
                        fontFamily: "Monserrat",
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color.fromRGBO(129, 134, 158, 1),
                        letterSpacing: 1),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 15),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary:
                                              Color.fromRGBO(255, 240, 232, 1),
                                          minimumSize:
                                              Size(size.width * 0.25, 78),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              side: BorderSide(
                                                  color: Color.fromRGBO(
                                                      224, 87, 6, 1)))),
                                      onPressed: () {
                                        print('ok2');
                                      },
                                      child: SvgPicture.asset(
                                        "assets/svg/medicine.svg",
                                        height: size.width * 0.13,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Text(
                                        "Pharmacy",
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                123, 127, 158, 1),
                                            fontFamily: "Monserrat",
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary:
                                              Color.fromRGBO(255, 240, 232, 1),
                                          minimumSize:
                                              Size(size.width * 0.25, 78),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              side: BorderSide(
                                                  color: Color.fromRGBO(
                                                      224, 87, 6, 1)))),
                                      onPressed: () {
                                        print('ok2');
                                      },
                                      child: SvgPicture.asset(
                                        "assets/svg/clinic.svg",
                                        height: size.width * 0.13,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Text(
                                        "Clinic 24h",
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                123, 127, 158, 1),
                                            fontFamily: "Monserrat",
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary:
                                              Color.fromRGBO(255, 240, 232, 1),
                                          minimumSize:
                                              Size(size.width * 0.25, 78),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              side: BorderSide(
                                                  color: Color.fromRGBO(
                                                      224, 87, 6, 1)))),
                                      onPressed: () {
                                        print('ok2');
                                      },
                                      child: SvgPicture.asset(
                                        "assets/svg/recipe.svg",
                                        height: size.width * 0.13,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Text(
                                        "Blast recipe",
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                123, 127, 158, 1),
                                            fontFamily: "Monserrat",
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ]),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary:
                                            Color.fromRGBO(255, 240, 232, 1),
                                        minimumSize:
                                            Size(size.width * 0.25, 78),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            side: BorderSide(
                                                color: Color.fromRGBO(
                                                    224, 87, 6, 1)))),
                                    onPressed: () {
                                      print('ok2');
                                    },
                                    child: SvgPicture.asset(
                                      "assets/svg/laboratory.svg",
                                      height: size.width * 0.13,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      "Laboratory",
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(123, 127, 158, 1),
                                          fontFamily: "Monserrat",
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary:
                                            Color.fromRGBO(255, 240, 232, 1),
                                        minimumSize:
                                            Size(size.width * 0.25, 78),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            side: BorderSide(
                                                color: Color.fromRGBO(
                                                    224, 87, 6, 1)))),
                                    onPressed: () {
                                      print('ok2');
                                    },
                                    child: SvgPicture.asset(
                                      "assets/svg/flydoctor.svg",
                                      height: size.width * 0.13,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      "Fly Doctor",
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(123, 127, 158, 1),
                                          fontFamily: "Monserrat",
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary:
                                            Color.fromRGBO(255, 240, 232, 1),
                                        minimumSize:
                                            Size(size.width * 0.25, 78),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            side: BorderSide(
                                                color: Color.fromRGBO(
                                                    224, 87, 6, 1)))),
                                    onPressed: () {
                                      print('ok2');
                                    },
                                    child: SvgPicture.asset(
                                      "assets/svg/hospital.svg",
                                      height: size.width * 0.13,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      "Hospital",
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(123, 127, 158, 1),
                                          fontFamily: "Monserrat",
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ])
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
