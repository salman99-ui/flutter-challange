import 'package:flutter/material.dart';

class loginApp extends StatefulWidget {
  @override
  _loginAppState createState() => _loginAppState();
}

class _loginAppState extends State<loginApp> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  height: 150,
                  width: 120,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/img/header-login.png'))),
                ),
              ),
              Positioned(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 60,
                        width: 80,
                        padding: EdgeInsets.only(),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/img/logo.png'))),
                      ),
                    ],
                  ),
                ),
              ),
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text(
                            "Login",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Text(
                          "Please sign to continue",
                          textAlign: TextAlign.left,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "User ID",
                                style: TextStyle(fontSize: 18),
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: "User ID",
                                  hintStyle: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontSize: 14),
                                ),
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (e) {
                                  if (e.isEmpty) {
                                    return "";
                                  }

                                  return null;
                                },
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Password",
                                style: TextStyle(fontSize: 18),
                              ),
                              TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontSize: 14),
                                ),
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (e) {
                                  if (e.isEmpty) {
                                    return "";
                                  }

                                  return null;
                                },
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(150, 48),
                                  primary: Colors.deepPurple,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24))),
                              onPressed: () {
                                if (formKey.currentState.validate()) {
                                  Navigator.of(context)
                                      .pushReplacementNamed('/main');
                                } else {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title: Text("Error"),
                                          content: Text(
                                              "Your User ID or Password Inccorrect"),
                                          actions: [
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Text(
                                                  "ok",
                                                  style:
                                                      TextStyle(fontSize: 18),
                                                )),
                                          ],
                                          elevation: 24,
                                        );
                                      });
                                }
                              },
                              child: Text(
                                "LOGIN",
                                style: TextStyle(letterSpacing: 2),
                              )),
                        ),
                      ],
                    ),
                  ),
                )
              ])
            ],
          )),
    );
  }
}
