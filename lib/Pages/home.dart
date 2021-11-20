import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    PageController _controller = PageController();

    return ListView(
      children: [
        Container(
          child: Column(
            children: [
              Container(
                height: 155,
                child: PageView(
                  controller: _controller,
                  children: [
                    Container(
                      child: Center(
                        child: Text("1"),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text("2"),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text("3"),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmoothPageIndicator(
                      onDotClicked: (val) {
                        print(val);
                      },
                      controller: _controller,
                      count: 3,
                      effect: WormEffect(),
                    ),
                    Text(
                      "See All Promotions",
                      style: TextStyle(
                          color: Color.fromRGBO(224, 87, 6, 1),
                          fontFamily: "Monserrat",
                          fontSize: 16),
                    )
                  ],
                ),
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
                padding: const EdgeInsets.only(
                  bottom: 15,
                ),
                child: Text(
                  "Services",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(58, 66, 118, 1),
                      fontSize: 16,
                      fontFamily: "Monserrat",
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(255, 240, 232, 1),
                              minimumSize: Size(size.width * 0.2, 60),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                      color: Color.fromRGBO(224, 87, 6, 1)))),
                          onPressed: () {
                            print('ok2');
                          },
                          child: SvgPicture.asset(
                            "assets/svg/heart.svg",
                            height: 35,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "Doctor",
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
                              minimumSize: Size(size.width * 0.19, 60),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  side: BorderSide(
                                      color: Color.fromRGBO(224, 87, 6, 1)))),
                          onPressed: () {
                            print('ok2');
                          },
                          child: SvgPicture.asset(
                            "assets/svg/medicine.svg",
                            height: 35,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "Pharmacy",
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
                              minimumSize: Size(size.width * 0.2, 60),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  side: BorderSide(
                                      color: Color.fromRGBO(224, 87, 6, 1)))),
                          onPressed: () {
                            print('ok2');
                          },
                          child: SvgPicture.asset(
                            "assets/svg/clinic.svg",
                            height: 35,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "Clinic 24h",
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
                              minimumSize: Size(size.width * 0.21, 60),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  side: BorderSide(
                                      color: Color.fromRGBO(224, 87, 6, 1)))),
                          onPressed: () {},
                          child: SvgPicture.asset(
                            "assets/svg/menu.svg",
                            height: 35,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            "Others",
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
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
