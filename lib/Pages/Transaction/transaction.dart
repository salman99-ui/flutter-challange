import 'package:flutter/material.dart';

class Transaction extends StatefulWidget {
  @override
  _TransactionState createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  final item = ["All", "Waiting Payments", "Waiting Pharmacy"];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(224, 87, 6, 1),
          title: Text("Transactions"),
          bottom: TabBar(
            indicatorColor: Colors.white,
            labelStyle: TextStyle(
                fontFamily: "Monserrat",
                fontWeight: FontWeight.w700,
                fontSize: 16),
            tabs: [
              Tab(text: "Doctor"),
              Tab(
                text: "Pharmacy",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      TextField(),
                      Container(
                        height: 70,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: item.length,
                            itemBuilder: (context, index) => Padding(
                                  padding: EdgeInsets.only(right: 6),
                                  child: Chip(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      label: Text(item[index])),
                                )),
                        // child: Row(
                        //     children: item
                        //         .map((e) => Padding(
                        //               padding: EdgeInsets.only(right: 6),
                        //               child: Chip(
                        //                   padding: EdgeInsets.symmetric(
                        //                       horizontal: 10),
                        //                   label: Text(e)),
                        //             ))
                        //         .toList()),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Center(child: Text("content 2"))
          ],
        ),
      ),
    );
  }
}
