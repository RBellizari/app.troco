import 'dart:async';
import 'package:flutter/material.dart';
import 'screens/access.page.dart';
import 'screens/name.page.dart';
import 'screens/phone.page.dart';
import 'screens/token.page.dart';
import 'screens/pass.page.dart';
import 'screens/zipcode.page.dart';
import 'screens/zipcodefull.page.dart';
import 'screens/fill.page.dart';
import 'screens/selfie.page.dart';
import 'screens/first.access.page.dart';
import 'screens/id.company.page.dart';
import 'screens/name.company.page.dart';
import 'screens/email.company.page.dart';
import 'screens/token.company.page.dart';
import 'screens/pass.company.page.dart';
import 'screens/zipcode.company.page.dart';
import 'screens/zipcodefull.company.page.dart';
import 'screens/fill.company.page.dart';
import 'screens/img.company.page.dart';
import 'screens/dashboard.page.dart';
import 'screens/dashboard.company.page.dart';
import 'screens/cam.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'screens/svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Troco.Tech',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.grey),
      home: SplashTroco(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/AccessPage': (BuildContext context) => AccessPage(),
        '/NamePage': (BuildContext context) => NamePage(),
        '/PhonePage': (BuildContext context) => PhonePage(),
        '/TokenPage': (BuildContext context) => TokenPage(),
        '/PassPage': (BuildContext context) => PassPage(),
        '/ZipCodePage': (BuildContext context) => ZipCodePage(),
        '/ZipCodeFullPage': (BuildContext context) => ZipCodeFullPage(),
        '/FillPage': (BuildContext context) => FillPage(),
        '/SelfiePage': (BuildContext context) => SelfiePage(),
        '/MyHomePage': (BuildContext context) => MyHomePage(),
        '/FirstAccessPage': (BuildContext context) => FirstAccessPage(),
        '/IdCompayPage': (BuildContext context) => IdCompayPage(),
        '/NameCompanyPage': (BuildContext context) => NameCompanyPage(),
        '/TokenCompanyPage': (BuildContext context) => TokenCompanyPage(),
        '/EmailCompanyPage': (BuildContext context) => EmailCompanyPage(),
        '/PassCompanyPage': (BuildContext context) => PassCompanyPage(),
        '/ZipCodeCompanyPage': (BuildContext context) => ZipCodeCompanyPage(),
        '/ZipCodeFullCompanyPage': (BuildContext context) => ZipCodeFullCompanyPage(),
        '/FillCompanyPage': (BuildContext context) => FillCompanyPage(),
        '/ImgCompanyPage': (BuildContext context) => ImgCompanyPage(),
        '/DashboardPage': (BuildContext context) => DashboardPage(),
        '/DashboardCompanyPage': (BuildContext context) => DashboardCompanyPage(),

        

       
      },
    );
  }
}

class SplashTroco extends StatefulWidget {
  @override
  _SplashTrocoState createState() => _SplashTrocoState();
}

class _SplashTrocoState extends State<SplashTroco> {
  startTime() async {
    var _duration = new Duration(seconds: 3);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/AccessPage');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: const Color(0xFF181C35),
        body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment
              .bottomCenter, // 10% of the width, so there are ten blinds.
          colors: [
            const Color(0xFF470036),
            const Color(0xFF2B2E47)
          ], // whitish to gray
          tileMode: TileMode.repeated, // repeats the gradient over the canvas
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: SvgPicture.asset(logoTroco),
          ),
          Container(
            child: SvgPicture.asset(textTroco),
          ),
        ],
      ),
    ));
  }
}
