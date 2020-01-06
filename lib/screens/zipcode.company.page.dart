import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'svg.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class ZipCodeCompanyPage extends StatefulWidget {
  @override
  _ZipCodeCompanyPage createState() => _ZipCodeCompanyPage();
}

var controllerzip = MaskedTextController(mask: '00000-000');

class _ZipCodeCompanyPage extends State<ZipCodeCompanyPage> {
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
            Text(
              'Passo 6/6',
              style: TextStyle(color: const Color(0xFFE573C8), fontSize: 12),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40.0),
            Container(
              child: SvgPicture.asset(iconZipOffice),
            ),
            SizedBox(height: 40.0),
            Text(
              'Precisamos saber\no endereço da empresa',
              style: TextStyle(color: const Color(0xFFE573C8), fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30.0),
            Text(
              'Por favor nos informe o CEP da empresa',
              style: TextStyle(color: const Color(0xFF404A69), fontSize: 15),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 45.0),
            Container(
              padding: EdgeInsets.only(
                  top: 30.0, right: 20.0, bottom: 0.0, left: 20.0),
              height: 220.0,
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
                    controller: controllerzip,
                    autofocus: false,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.phone,
                    style: new TextStyle(
                        color: const Color(0xFF440538), fontSize: 20),
                    decoration: InputDecoration(
                      hintText: 'Ex.: 06310-080',
                      labelStyle: TextStyle(
                        color: const Color(0xFF440538),
                      ),
                    ),
                  ),
                  SizedBox(height: 50.0),
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
                            Navigator.pushNamed(context, '/ZipCodeFullCompanyPage'),
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
