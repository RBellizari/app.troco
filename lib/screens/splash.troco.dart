import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'svg.dart';

class SplashTroco extends StatefulWidget {
  @override
  _SplashTroco createState() => _SplashTroco();
}

class _SplashTroco extends State<SplashTroco> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181C35
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 257.0,
                height: 505.0,
              child:FlatButton(
              child: SvgPicture.asset(logoTroco),
                  onPressed: () => Navigator.pushNamed(context, '/PhonePage'),
                ),
              ),
            ],
        ),
      ),
    );
  }
}