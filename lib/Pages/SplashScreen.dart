import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateHome();
  }

  _navigateHome() async {
    await Future.delayed(Duration(milliseconds: 2000));

    Navigator.pushReplacementNamed(context, '/login2');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/img/header-splash.png'))),
          ),
          Container(
            width: 110,
            height: 80,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/img/logo.png'))),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/img/footer-splash.png'))),
          )
        ],
      ),
    )
        //     body: Stack(
        //   children: [
        //     Positioned(
        //         child: Container(
        //       width: 400,
        //       height: 300,
        //       decoration: BoxDecoration(
        //           image: DecorationImage(
        //               fit: BoxFit.fill,
        //               image: AssetImage('assets/img/header-splash.png'))),
        //     )),
        //     Positioned(
        //         bottom: 0,
        //         right: 0,
        //         left: 0,
        //         child: Text(
        //           "Test",
        //           textAlign: TextAlign.center,
        //         )),
        //     Positioned(
        //         bottom: 0,
        //         left: 0,
        //         child: Container(
        //           width: 300,
        //           height: 260,
        //           decoration: BoxDecoration(
        //               image: DecorationImage(
        //                   fit: BoxFit.fill,
        //                   image: AssetImage('assets/img/footer-splash.png'))),
        //         )),
        //   ],
        // ));
        );
  }
}
