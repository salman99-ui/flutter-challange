import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Address extends StatelessWidget {
  final state = ["Indonesia", "Siangapore", "Malaysia"];
  final city = ["Jakarta", "Surabaya", "Bandung"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(224, 87, 6, 1),
        title: Text(
          "Address",
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: Form(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 6),
                          child: Text(
                            "Address Name",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w700,
                                fontSize: 14),
                          ),
                        ),
                        TextFormField(
                          maxLines: 1,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (e) {
                            if (e.isEmpty) {
                              return "This Field Is Required";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: -10),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1,
                                      color:
                                          Color.fromRGBO(235, 240, 255, 1)))),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 6),
                          child: Text(
                            "Phone Number",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w700,
                                fontSize: 14),
                          ),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 6, horizontal: 8),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1,
                                      color:
                                          Color.fromRGBO(235, 240, 255, 1)))),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 6),
                          child: Text(
                            "State",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                letterSpacing: 1),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 6),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2,
                                  color: Color.fromRGBO(235, 240, 255, 1))),
                          child: DropdownButton(
                            hint: Text("-- Select One"),
                            icon: Icon(Icons.expand_more),
                            isExpanded: true,
                            underline: SizedBox(),
                            items: state
                                .map((e) =>
                                    DropdownMenuItem(child: Text(e), value: e))
                                .toList(),
                            onChanged: (value) {
                              print(value);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 6),
                          child: Text(
                            "City",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                letterSpacing: 1),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 6),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2,
                                  color: Color.fromRGBO(235, 240, 255, 1))),
                          child: DropdownButton(
                            hint: Text("-- Select One"),
                            icon: Icon(Icons.expand_more),
                            isExpanded: true,
                            underline: SizedBox(),
                            items: city
                                .map((e) =>
                                    DropdownMenuItem(child: Text(e), value: e))
                                .toList(),
                            onChanged: (value) {
                              print(value);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 6),
                          child: Text(
                            "Zip Code",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w700,
                                fontSize: 14),
                          ),
                        ),
                        TextFormField(
                          validator: (e) {},
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 6, horizontal: 8),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1,
                                      color:
                                          Color.fromRGBO(235, 240, 255, 1)))),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 28),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 6),
                          child: Text(
                            "Address ",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w700,
                                fontSize: 14),
                          ),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.multiline,
                          minLines: 1,
                          maxLines: 7,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade200))),
                        )
                      ],
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(double.infinity, 50),
                          primary: Color.fromRGBO(224, 87, 6, 1)),
                      onPressed: () {
                        print("OK");
                      },
                      child: Text("Save",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w700,
                              fontSize: 14)))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
