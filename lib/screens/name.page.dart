import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'svg.dart';

class NamePage extends StatefulWidget {
  @override
  _NamePage createState() => _NamePage();
}

class _NamePage extends State<NamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xFFF2ECF1),
      body: Container(
        padding:
            EdgeInsets.only(top: 20.0, right: 20.0, bottom: 0.0, left: 20.0),
        color: const Color(0xFFF2ECF1),
        child: ListView(
          children: <Widget>[
            Text(
              'Passo 1/5',
              style: TextStyle(color: const Color(0xFFE573C8), fontSize: 12),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40.0),
            Container(
              child: SvgPicture.asset(iconPhone),
            ),
            SizedBox(height: 40.0),
            Text(
              'Vamos iniciar seu\ncadastro, é super rápido!',
              style: TextStyle(color: const Color(0xFFE573C8), fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30.0),
            Text(
              'Informe seu nome completo.',
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
                    autofocus: false,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.text,
                    style: new TextStyle(
                    color: const Color(0xFF440538), fontSize: 20),
                    decoration: InputDecoration(
                      hintText: 'Ex.: Bigodinho Amorin',
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
                            Navigator.pushNamed(context, '/PhonePage'),
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
