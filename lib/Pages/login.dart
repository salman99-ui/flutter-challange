import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatelessWidget {
  void dispose() {}

  @override
  Widget build(BuildContext context) {
    final googleSign = GoogleSignIn();
    final size = MediaQuery.of(context).size;
    var formKey = GlobalKey<FormState>();

    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Center(
                    child: Text(
                      "Welcome Login",
                      style: TextStyle(
                          fontFamily: "Monserrat",
                          fontSize: 24,
                          fontStyle: FontStyle.italic),
                    ),
                  )),
              SizedBox(height: 80),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            elevation: 1,
                            minimumSize: Size(size.width * 0.4, 42),
                            side: BorderSide(
                                color: Color.fromRGBO(119, 134, 158, 0.3))),
                        onPressed: () {
                          print("ok");
                        },
                        child: SvgPicture.asset("assets/svg/facebook.svg")),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            elevation: 1,
                            minimumSize: Size(size.width * 0.4, 42),
                            side: BorderSide(
                                color: Color.fromRGBO(119, 134, 158, 0.3))),
                        onPressed: () async {
                          final user = await googleSign.signIn();
                          SharedPreferences instance =
                              await SharedPreferences.getInstance();
                          await instance.setString('name', user.displayName);
                          Navigator.pushReplacementNamed(context, '/main');
                        },
                        child: SvgPicture.asset("assets/svg/google.svg"))
                  ],
                ),
              ),
              Form(
                key: formKey,
                child: Container(
                  margin: EdgeInsets.only(top: 30),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (e) {
                            if (e.isEmpty) {
                              return "please isi";
                            }

                            return null;
                          },
                          decoration: InputDecoration(
                              labelText: "Username",
                              labelStyle:
                                  TextStyle(fontStyle: FontStyle.italic)),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(labelText: "Password"),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 15),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                            value: true,
                            onChanged: (val) {
                              print(val);
                            }),
                        Text("Remember Me ")
                      ],
                    ),
                    TextButton(
                        onPressed: () {
                          print("ok2");
                        },
                        child: Text(
                          "Forgot Password",
                          style: TextStyle(
                              color: Color.fromRGBO(224, 87, 6, 1),
                              fontStyle: FontStyle.italic),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(size.width, 48),
                        primary: Color.fromRGBO(224, 87, 6, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    onPressed: () {
                      if (formKey.currentState.validate()) {
                        print("berhasil");
                      } else {
                        print("gagal");
                      }
                    },
                    child: Text("Login")),
              ),
              Padding(
                padding: EdgeInsets.only(top: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't Have a account?",
                      style: TextStyle(
                          fontFamily: "Monserrat", fontStyle: FontStyle.italic),
                    ),
                    InkWell(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontFamily: "Monserrat",
                            fontStyle: FontStyle.italic,
                            color: Color.fromRGBO(224, 87, 6, 1)),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
