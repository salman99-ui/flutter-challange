import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromRGBO(224, 87, 6, 1)),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        child: Image.asset("assets/img/user.png"),
                        radius: 40,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8, bottom: 5),
                        child: Text("John Doe",
                            style: TextStyle(
                                color: Color.fromRGBO(4, 44, 92, 1),
                                fontFamily: "Monserrat",
                                fontSize: 14,
                                fontWeight: FontWeight.bold)),
                      ),
                      Text(
                        "johndoe@gmail.com",
                        style: TextStyle(
                            color: Color.fromRGBO(4, 44, 92, 1),
                            fontFamily: "Monserrat",
                            fontSize: 11,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Card(
                    elevation: 2,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Image.asset("assets/img/ovo.png",
                                    height: 34, width: 34),
                                Padding(
                                  padding: const EdgeInsets.only(top: 6),
                                  child: Text("RP 378.000",
                                      style: TextStyle(
                                          fontFamily: "Monserrat",
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Image.asset("assets/img/voucher.png",
                                    height: 34, width: 34),
                                Padding(
                                  padding: const EdgeInsets.only(top: 6),
                                  child: Text("4 Voucher For You",
                                      style: TextStyle(
                                          color: Color.fromRGBO(224, 87, 6, 1),
                                          fontFamily: "Monserrat",
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold)),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Column(
                    children: [
                      ListTile(
                        leading: SvgPicture.asset("assets/svg/phone.svg"),
                        trailing: Icon(Icons.arrow_forward_ios),
                        title: Text("Update Profile",
                            style: TextStyle(
                                color: Color.fromRGBO(34, 50, 99, 1),
                                letterSpacing: 1,
                                fontSize: 14,
                                fontWeight: FontWeight.bold)),
                        onTap: () {
                          Navigator.pushNamed(context, '/address');
                        },
                      ),
                      ListTile(
                        leading: SvgPicture.asset("assets/svg/address.svg"),
                        trailing: Icon(Icons.arrow_forward_ios),
                        title: Text("Address List",
                            style: TextStyle(
                                color: Color.fromRGBO(34, 50, 99, 1),
                                letterSpacing: 1,
                                fontSize: 14,
                                fontWeight: FontWeight.bold)),
                        onTap: () {
                          print("ok");
                        },
                      ),
                      ListTile(
                        leading: SvgPicture.asset("assets/svg/lock.svg"),
                        trailing: Icon(Icons.arrow_forward_ios),
                        title: Text("Change Password",
                            style: TextStyle(
                                color: Color.fromRGBO(34, 50, 99, 1),
                                letterSpacing: 1,
                                fontSize: 14,
                                fontWeight: FontWeight.bold)),
                        onTap: () {
                          print("ok");
                        },
                      ),
                    ],
                  ),
                ),
                Divider(color: Color.fromRGBO(223, 231, 245, 1)),
                Container(
                  child: Column(
                    children: [
                      ListTile(
                        leading: SvgPicture.asset("assets/svg/bpjs.svg"),
                        trailing: Icon(Icons.arrow_forward_ios),
                        title: Text("BPJS Card",
                            style: TextStyle(
                                color: Color.fromRGBO(34, 50, 99, 1),
                                letterSpacing: 1,
                                fontSize: 14,
                                fontWeight: FontWeight.bold)),
                        onTap: () {
                          print("ok");
                        },
                      ),
                      ListTile(
                        leading: SvgPicture.asset("assets/svg/about.svg"),
                        trailing: Icon(Icons.arrow_forward_ios),
                        title: Text("About Fitlife",
                            style: TextStyle(
                                color: Color.fromRGBO(34, 50, 99, 1),
                                letterSpacing: 1,
                                fontSize: 14,
                                fontWeight: FontWeight.bold)),
                        onTap: () {
                          print("ok");
                        },
                      ),
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
