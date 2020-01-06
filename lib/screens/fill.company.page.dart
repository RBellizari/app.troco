import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'svg.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class FillCompanyPage extends StatefulWidget {
  @override
  _FillCompanyPage createState() => _FillCompanyPage();
}

var controllerphone = MaskedTextController(mask: '(00) 00000-0000');

class _FillCompanyPage extends State<FillCompanyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2ECF1),
      body: Container(
        padding:
            EdgeInsets.only(top: 20.0, right: 20.0, bottom: 0.0, left: 20.0),
        color: const Color(0xFFF2ECF1),
        child: ListView(
          children: <Widget>[
          
            SizedBox(height: 40.0),
            Container(
              child: SvgPicture.asset(iconFill),
            ),
            SizedBox(height: 40.0),
            Text(
              'Complete o cadastro da empresa',
              style: TextStyle(color: const Color(0xFFE573C8), fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30.0),
           
            Container(
              padding: EdgeInsets.only(
                  top: 30.0, right: 20.0, bottom: 0.0, left: 20.0),
              height: 360.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: ListView(
                children: <Widget>[
                  TextFormField(
                    autofocus: false,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.emailAddress,
                    style: new TextStyle(
                        color: const Color(0xFF440538), fontSize: 20),
                    decoration: InputDecoration(
                      hintText: 'Nome para contato',
                      labelStyle: TextStyle(
                        color: const Color(0xFF440538),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0),
                   TextFormField(
                   
                    autofocus: false,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.datetime,
                    style: new TextStyle(
                        color: const Color(0xFF440538), fontSize: 20),
                    decoration: InputDecoration(
                      hintText: 'Telefone para contato',
                      labelStyle: TextStyle(
                        color: const Color(0xFF440538),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0),
                   TextFormField(
                    controller: controllerphone,
                    autofocus: false,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    style: new TextStyle(
                        color: const Color(0xFF440538), fontSize: 20),
                    decoration: InputDecoration(
                      hintText: 'Atividade da empresa',
                      labelStyle: TextStyle(
                        color: const Color(0xFF440538),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0),
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
                            Text("Avançar",
                                style: TextStyle(
                                    color: const Color(0xFFFFFFFF),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400)),
                          ],
                        ),
                        onPressed: () =>
                            Navigator.pushNamed(context, '/ImgCompanyPage'),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
