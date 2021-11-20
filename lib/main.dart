import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_movie/Pages/Account/address.dart';
import 'package:flutter_movie/Pages/SplashScreen.dart';
import 'package:flutter_movie/Pages/Transaction/transaction.dart';
import 'package:flutter_movie/Pages/home.dart';
import 'package:flutter_movie/Pages/Account/profile.dart';
import 'package:flutter_movie/Pages/login.dart';
import 'package:flutter_movie/Pages/login2.dart';
import 'package:flutter_movie/Pages/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final login = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Splash(),
        '/login': (context) => LoginPage(),
        '/login2': (context) => loginApp(),
        '/main': (context) => Homepage(),
        '/profile': (context) => Profile(),
        '/services': (context) => Services(),
        '/address': (context) => Address(),
        '/transaction': (context) => Transaction(),
      },
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var _index = 0;

  Future getInstance() async {
    SharedPreferences instance = await SharedPreferences.getInstance();
    if (instance.getString('name') == null) {
      Navigator.pushReplacementNamed(context, '/login');
    }
  }

  void initState() {
    getInstance();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Home(),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Color.fromRGBO(224, 87, 6, 1),
            onPressed: () {
              Navigator.pushNamed(context, '/services');
            },
            child: SvgPicture.asset("assets/svg/main.svg")),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          elevation: 1,
          notchMargin: 2,
          shape: CircularNotchedRectangle(),
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          _index = 0;
                        });
                      },
                      minWidth: 40,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/svg/Home.svg",
                            color: (_index == 0)
                                ? Color.fromRGBO(224, 87, 6, 1)
                                : Color.fromRGBO(119, 134, 158, 1),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text(
                              "Home",
                              style: TextStyle(
                                  color: (_index == 0)
                                      ? Color.fromRGBO(224, 87, 6, 1)
                                      : Color.fromRGBO(119, 134, 158, 1),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Monseratt",
                                  fontSize: 11),
                            ),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        _index = 1;
                        Navigator.pushNamed(context, '/transaction');
                      },
                      minWidth: 40,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/svg/transaction.svg",
                            color: (_index == 1)
                                ? Color.fromRGBO(224, 87, 6, 1)
                                : Color.fromRGBO(119, 134, 158, 1),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text(
                              "Transaction",
                              style: TextStyle(
                                  color: (_index == 1)
                                      ? Color.fromRGBO(224, 87, 6, 1)
                                      : Color.fromRGBO(119, 134, 158, 1),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Monseratt",
                                  fontSize: 11),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                        setState(() {
                          _index = 2;
                        });
                      },
                      minWidth: 40,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/svg/help.svg",
                            color: (_index == 2)
                                ? Color.fromRGBO(224, 87, 6, 1)
                                : Color.fromRGBO(119, 134, 158, 1),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(
                              "Help",
                              style: TextStyle(
                                  color: (_index == 2)
                                      ? Color.fromRGBO(224, 87, 6, 1)
                                      : Color.fromRGBO(119, 134, 158, 1),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Monseratt",
                                  fontSize: 11),
                            ),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          _index = 3;

                          Navigator.pushNamed(context, '/profile');
                        });
                      },
                      minWidth: 40,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/svg/Profile.svg",
                            color: (_index == 3)
                                ? Color.fromRGBO(224, 87, 6, 1)
                                : Color.fromRGBO(119, 134, 158, 1),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text(
                              "Profile",
                              style: TextStyle(
                                  color: (_index == 3)
                                      ? Color.fromRGBO(224, 87, 6, 1)
                                      : Color.fromRGBO(119, 134, 158, 1),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Monseratt",
                                  fontSize: 11),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
