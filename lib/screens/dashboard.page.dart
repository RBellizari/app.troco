import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'svg.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPage createState() => _DashboardPage();
}

var controllerphone = MaskedTextController(mask: '(00) 00000-0000');

class _DashboardPage extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2ECF1),
      body: Stack(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 310.0,
                    //padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment
                              .bottomCenter, // 10% of the width, so there are ten blinds.
                          colors: [
                            const Color(0xFF470036),
                            const Color(0xFF2B2E47)
                          ],
                          // whitish to gray
                          tileMode: TileMode.repeated,
                          // repeats the gradient over the canvas
                        ),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.elliptical(60, 35),
                            bottomRight: Radius.elliptical(60, 35))),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          right: -60.0,
                          top: -30.0,
                          child: Container(
                            width: 200,
                            height: 200,
                            child: SvgPicture.asset(backDashLogoTop),
                          ),
                        ),
                        Column(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Align(
                              child: Container(
                                padding: EdgeInsets.only(
                                    top: 40.0,
                                    right: 0.0,
                                    bottom: 0.0,
                                    left: 0.0),
                                child: SvgPicture.asset(textTroco),
                              ),
                            ),
                            SizedBox(height: 40.0),
                            Align(
                              child: Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(80),
                                  color: const Color(0xFFFFFFFF),
                                  border: Border(
                                    top: BorderSide(
                                        width: 1.0, color: Color(0xFFE573C8)),
                                    left: BorderSide(
                                        width: 1.0, color: Color(0xFFE573C8)),
                                    right: BorderSide(
                                        width: 1.0, color: Color(0xFFE573C8)),
                                    bottom: BorderSide(
                                        width: 1.0, color: Color(0xFFE573C8)),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20.0),
                            Align(
                              child: Text(
                                'Boa tarde, Robson!',
                                style: TextStyle(
                                    color: const Color(0xFFFFFFFF),
                                    fontSize: 16),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                  left: 20,
                  top: 260.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Align(
                        child: Container(
                          height: 180.0,
                          padding: EdgeInsets.only(
                              top: 0.0, right: 0.0, bottom: 0.0, left: 0.0),
                          width: MediaQuery.of(context).size.width - 40,
                          decoration: BoxDecoration(
                              color: const Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(.1),
                                  blurRadius: 10.0,
                                  spreadRadius: 1.0,
                                  offset: Offset(
                                    0.0, // Move to right 10  horizontally
                                    1.0, // Move to bottom 10 Vertically
                                  ),
                                )
                              ]),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                height: 60.0,
                                padding: EdgeInsets.only(
                                    top: 4.0,
                                    right: 20.0,
                                    bottom: 0.0,
                                    left: 20.0),
                                width: MediaQuery.of(context).size.width - 40,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10)),
                                  border: Border(
                                    top: BorderSide(
                                        width: 1.0, color: Color(0xFFE9E9E9)),
                                    left: BorderSide(
                                        width: 1.0, color: Color(0xFFE9E9E9)),
                                    right: BorderSide(
                                        width: 1.0, color: Color(0xFFE9E9E9)),
                                    bottom: BorderSide(
                                        width: 1.0, color: Color(0xFFE9E9E9)),
                                  ),
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Text(
                                        'Seu Saldo:',
                                        style: TextStyle(
                                            color: const Color(0xFF686c6f),
                                            fontSize: 15),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        '0,00',
                                        style: TextStyle(
                                            color: const Color(0xFF313139),
                                            fontSize: 30),
                                        textAlign: TextAlign.right,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    top: 80.0,
                                    right: 20.0,
                                    bottom: 0.0,
                                    left: 20.0),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                        child: FlatButton(
                                      child: SvgPicture.asset(iconExtract),
                                      onPressed: () => Navigator.pushNamed(
                                          context, '/ZipCodeCompanyPage'),
                                    )),
                                    Expanded(
                                        child: FlatButton(
                                      child: SvgPicture.asset(iconAddCash),
                                      onPressed: () => Navigator.pushNamed(
                                          context, '/ZipCodeCompanyPage'),
                                    )),
                                    Expanded(
                                        child: FlatButton(
                                      child: SvgPicture.asset(iconDrawCash),
                                      onPressed: () => Navigator.pushNamed(
                                          context, '/ZipCodeCompanyPage'),
                                    )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
              Positioned(
                  left: 20,
                  top: 450.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Align(
                        child: Container(
                          height: 180.0,
                          padding: EdgeInsets.only(
                              top: 0.0, right: 0.0, bottom: 0.0, left: 0.0),
                          width: MediaQuery.of(context).size.width - 40,
                          child: Stack(
                            children: <Widget>[
                              Container(
                                height: 60.0,
                                padding: EdgeInsets.only(
                                    top: 0.0,
                                    right: 0.0,
                                    bottom: 0.0,
                                    left: 20.0),
                                width: MediaQuery.of(context).size.width - 40,
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Text(
                                        'Use seus trocados:',
                                        style: TextStyle(
                                            color: const Color(0xFF000000),
                                            fontSize: 16, fontWeight: FontWeight.w500),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    top: 60.0,
                                    right: 0.0,
                                    bottom: 0.0,
                                    left: 0.0),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                        child: FlatButton(
                                      child: SvgPicture.asset(iconReload),
                                      onPressed: () => Navigator.pushNamed(
                                          context, '/ZipCodeCompanyPage'),
                                    )),
                                    Expanded(
                                        child: Text(
                                      'Recarga',
                                      style: TextStyle(
                                          color: const Color(0xFF000000),
                                          fontSize: 15),
                                    )),
                                    Expanded(
                                        child: FlatButton(
                                      child: SvgPicture.asset(iconToll),
                                      onPressed: () => Navigator.pushNamed(
                                          context, '/ZipCodeCompanyPage'),
                                    )),
                                    Expanded(
                                        child: Text(
                                      'Pedágio',
                                      style: TextStyle(
                                          color: const Color(0xFF000000),
                                          fontSize: 15),
                                    )),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    top: 130.0,
                                    right: 0.0,
                                    bottom: 0.0,
                                    left: 0.0),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                        child: FlatButton(
                                      child: SvgPicture.asset(iconTransport),
                                      onPressed: () => Navigator.pushNamed(
                                          context, '/ZipCodeCompanyPage'),
                                    )),
                                    Expanded(
                                        child: Text(
                                      'Transporte',
                                      style: TextStyle(
                                          color: const Color(0xFF000000),
                                          fontSize: 15),
                                    )),
                                    Expanded(
                                        child: FlatButton(
                                      child: SvgPicture.asset(iconDonation),
                                      onPressed: () => Navigator.pushNamed(
                                          context, '/ZipCodeCompanyPage'),
                                    )),
                                    Expanded(
                                        child: Text(
                                      'Doação',
                                      style: TextStyle(
                                          color: const Color(0xFF000000),
                                          fontSize: 15),
                                    )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
