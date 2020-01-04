import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'svg.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class AccessPage extends StatefulWidget {
  @override
  _AccessPage createState() => _AccessPage();
}

var controllerphone = MaskedTextController(mask: '(00) 00000-0000');


class _AccessPage extends State<AccessPage> {
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
          colors: [ const Color(0xFF470036), const Color(0xFF2B2E47) ], // whitish to gray
          tileMode: TileMode.repeated, // repeats the gradient over the canvas
        ),
      ),
        padding:
            EdgeInsets.only(top: 20.0, right: 25.0, bottom: 0.0, left: 25.0),
        //color: const Color(0xFF181C35),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 60.0),
            Container(
              padding: EdgeInsets.only(
                  top: 30.0, right: 20.0, bottom: 0.0, left: 20.0),
              height: 510.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: ListView(
                children: <Widget>[
                  Container(
                    child: SvgPicture.asset(logoAccess),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Acesse sua conta',
                    style:
                        TextStyle(color: const Color(0xFFE573C8), fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Informe seu celular e senha',
                    style:
                        TextStyle(color: const Color(0xFF404A69), fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 40.0),
                  TextFormField(
                    controller: controllerphone,
                    autofocus: false,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.phone,
                    style: new TextStyle(
                        color: const Color(0xFF440538), fontSize: 20 ),
                    decoration: InputDecoration(
                      hintText: 'Digite seu celular',
                      labelStyle: TextStyle(
                        color: const Color(0xFF440538),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    obscureText: true,
                    autofocus: false,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.visiblePassword,
                    style: new TextStyle(
                        color: const Color(0xFF440538), fontSize: 20),
                    decoration: InputDecoration(
                      hintText: 'Digite sua senha',
                      labelStyle: TextStyle(color: const Color(0xFF440538)),
                    ),
                  ),
                  SizedBox(height: 40.0),
                  Container(
                    height: 45.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE573C8),
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                    child: SizedBox.expand(
                      child: FlatButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Entrar",
                                style: TextStyle(
                                    color: const Color(0xFFFFFFFF),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400)),
                          ],
                        ),
                        onPressed: () =>
                            Navigator.pushNamed(context, '/NamePage'),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Container(
                    height: 25.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                    child: SizedBox.expand(
                      child: FlatButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Problemas para acessar?",
                                style: TextStyle(
                                    color: const Color(0xFFE573C8),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400)),
                          ],
                        ),
                        onPressed: () =>
                            Navigator.pushNamed(context, '/NamePage'),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    height: 25.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                    child: SizedBox.expand(
                      child: FlatButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Primeiro acesso?",
                                style: TextStyle(
                                    color: const Color(0xFFE573C8),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400)),
                          ],
                        ),
                        onPressed: () =>
                            Navigator.pushNamed(context, '/FirstAccessPage'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
