import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'svg.dart';

class DashboardCompanyPage extends StatefulWidget {
  @override
  _DashboardCompanyPage createState() => _DashboardCompanyPage();
}

class _DashboardCompanyPage extends State<DashboardCompanyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/back-dash.png'),
          fit: BoxFit.fitHeight)
        ),
       child: AppBar(
backgroundColor: Colors.transparent,
       ),
      ),
    );
  }
}