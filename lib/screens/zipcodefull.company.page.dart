import 'package:flutter/material.dart';

class ZipCodeFullCompanyPage extends StatefulWidget {
  @override
  _ZipCodeFullCompanyPage createState() => _ZipCodeFullCompanyPage();
}

class _ZipCodeFullCompanyPage extends State<ZipCodeFullCompanyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2ECF1),
      body: Container(
        padding:
            EdgeInsets.only(top: 20.0, right: 20.0, bottom: 40.0, left: 20.0),
        color: const Color(0xFFF2ECF1),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 40.0),
            Text(
              'Show! Agora só falta\ncompletar seu endereço.',
              style: TextStyle(color: const Color(0xFFE573C8), fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 35.0),
            TextFormField(
                    autofocus: false,
                    textAlign: TextAlign.left,
                    keyboardType: TextInputType.text,
                     initialValue: '06310-080',
                    style: new TextStyle(
                        color: const Color(0xFF707070), fontSize: 20),
                    decoration: InputDecoration(
                        labelText: "CEP",
                       hintText: '06310-080',
                      labelStyle: TextStyle(
                        color: const Color(0xFF000000),
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                   SizedBox(height: 25.0),
            Container(
              child: Row(
                children: <Widget>[
                Expanded ( child:
                   TextFormField(
                    autofocus: false,
                    textAlign: TextAlign.left,
                    keyboardType: TextInputType.text,
                    initialValue: 'SP',
                    style: new TextStyle(
                        color: const Color(0xFF707070), fontSize: 20),
                    decoration: InputDecoration(
                      labelText: "Estado",
                      hintText: 'SP',
                      labelStyle: TextStyle(
                        color: const Color(0xFF000000),
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
                
                 Container( width: 10.0),
                   Expanded ( child: TextFormField(
                    autofocus: false,
                    textAlign: TextAlign.left,
                    keyboardType: TextInputType.text,
                    initialValue: 'Carapicuíba',
                    style: new TextStyle(
                        color: const Color(0xFF707070), fontSize: 20),
                    decoration: InputDecoration(
                      labelText: 'Cidade',
                      labelStyle: TextStyle(
                        color: const Color(0xFF000000),
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                   ),
                 
                ],
              ),
            ),
             SizedBox(height: 25.0),
            TextFormField(
                    autofocus: false,
                    textAlign: TextAlign.left,
                    keyboardType: TextInputType.text,
                     initialValue: 'Vila Caldas',
                    style: new TextStyle(
                        color: const Color(0xFF707070), fontSize: 20),
                    decoration: InputDecoration(
                        labelText: "Bairro",
                       hintText: 'Bairro',
                      labelStyle: TextStyle(
                        color: const Color(0xFF000000),
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                   SizedBox(height: 25.0),
                  TextFormField(
                    autofocus: false,
                    textAlign: TextAlign.left,
                    keyboardType: TextInputType.text,
                     initialValue: 'Rua Venceslau Bras',
                    style: new TextStyle(
                        color: const Color(0xFF707070), fontSize: 20),
                    decoration: InputDecoration(
                        labelText: "Endereço",
                       hintText: 'Endereço',
                      labelStyle: TextStyle(
                        color: const Color(0xFF000000),
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                   SizedBox(height: 25.0),
                  Container(
              child: Row(
                children: <Widget>[
                Expanded ( child:
                   TextFormField(
                    autofocus: false,
                    textAlign: TextAlign.left,
                    keyboardType: TextInputType.phone,
                    style: new TextStyle(
                        color: const Color(0xFF440538), fontSize: 20),
                    decoration: InputDecoration(
                     hintText: 'Número',
                      labelStyle: TextStyle(
                        color: const Color(0xFF440538),
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ),
                 
                 Container( width: 10.0),
                   Expanded ( child: TextFormField(
                    autofocus: false,
                    textAlign: TextAlign.left,
                    keyboardType: TextInputType.phone,
                    style: new TextStyle(
                        color: const Color(0xFF440538), fontSize: 20),
                    decoration: InputDecoration(
                      
                      hintText: 'Complemento',
                      
                      labelStyle: TextStyle(
                        color: const Color(0xFF440538),
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                   ),
                 
                ],
              ),
            ),
             SizedBox(height: 45.0),
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
                  onPressed: () => Navigator.pushNamed(context, '/FillCompanyPage'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
