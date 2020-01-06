//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'svg.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ImgCompanyPage extends StatefulWidget {
  @override
  _ImgCompanyPage createState() => _ImgCompanyPage();
}

class _ImgCompanyPage extends State<ImgCompanyPage> {
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

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
            SizedBox(height: 60.0),
            Text(
              'A conta da sua empresa está criada!\nDeseja adicionar uma foto? ',
              style: TextStyle(color: const Color(0xFFE573C8), fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 65.0,
              width: 65.0,
            ),
            Container(
              height: 100.0,
              width: 100.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: _image == null
                      ? SvgPicture.asset(iconPhoto)
                      : CircleAvatar(
                          backgroundImage: FileImage(_image),
                          radius: 50.0,
                        ),
                  onPressed: getImage,
                ),
              ),
            ),
            Container(
              child: _image == null
                  ? SizedBox(height: 10.0)
                  : Container(
                      height: 35.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                      ),
                      child: SizedBox.expand(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Curtiu sua foto?",
                                style: TextStyle(
                                    color: const Color(0xFFE573C8),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ),
                    ),
            ),
            SizedBox(height: 70.0),
            Text(
              'Selecione uma imagem que represente sua empresa, foto ou logomarca da galeria do seu celular. Recomendamos uma imagem com no máximo 100k',
              style: TextStyle(color: const Color(0xFF404A69), fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 85.0),
            Container(
                child: _image == null
                    ? Container(
                        height: 25.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                        ),
                        child: SizedBox.expand(
                          child: FlatButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("DEIXAR PARA DEPOIS",
                                    style: TextStyle(
                                        color: const Color(0xFFE573C8),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400)),
                              ],
                            ),
                            onPressed: () =>
                                Navigator.pushNamed(context, '/AccessPage'),
                          ),
                        ),
                      )
                    : Container(
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
                                Text("Acesse agora sua conta",
                                    style: TextStyle(
                                        color: const Color(0xFFFFFFFF),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400)),
                              ],
                            ),
                            onPressed: () =>
                                Navigator.pushNamed(context, '/AccessPage'),
                          ),
                        ),
                      )),
          ],
        ),
      ),
    );
  }
}
