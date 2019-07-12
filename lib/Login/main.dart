import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginWidget extends StatefulWidget {
  _LoginWidgetState createState() => _LoginWidgetState();
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Container(
              decoration: BoxDecoration(
            color: HexColor('#202427'),
          )),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                  top: 90.0, left: 40.0, right: 40.0, bottom: 90.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    new Container(
                      padding: EdgeInsets.all(20.0),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          new Container(
                            padding: EdgeInsets.only(top: 90.0, bottom: 10.0),
                            child: new Text(
                              "Go Pichanga!",
                              style: new TextStyle(
                                fontFamily: 'UbuntuRegular',
                                fontSize: 35.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          new Container(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: new Column(
                              children: <Widget>[
                                Image.asset('assets/images/wallpaperlogin.jpg',
                                    width: 240.0, fit: BoxFit.cover),
                              ],
                            ),
                          ),
                          new Container(
                            padding: EdgeInsets.only(
                                left: 30.0, right: 30.0, bottom: 10.0),
                            child: new TextField(
                              decoration: new InputDecoration(
                                  hintText: 'Ingrese tu usuario.'),
                              style: TextStyle(
                                fontFamily: "UbuntuRegular",
                              ),
                            ),
                          ),
                          new Container(
                            padding: EdgeInsets.only(
                                left: 30.0, right: 30.0, bottom: 50.0),
                            child: new TextField(
                              decoration: new InputDecoration(
                                  hintText: 'Ingrese tu contraseña.'),
                              style: TextStyle(
                                fontFamily: "UbuntuRegular",
                              ),
                            ),
                          ),
                          new Container(
                              width: 200.0,
                              padding: EdgeInsets.only(left: 70.0, right: 70.0),
                              child: new Column(
                                children: <Widget>[
                                  new RaisedButton(
                                    color: Colors.blueAccent,
                                    padding: EdgeInsets.all(7.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      /*centrar siempre y cuando el padre sea row*/
                                      children: <Widget>[
                                        Icon(
                                          FontAwesomeIcons.facebookSquare,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          " Login con Facebook",
                                          style: TextStyle(color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                    shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(20.0)),
                                    onPressed: () => {},
                                  ),
                                ],
                              )),
                        ],
                      ),
                      width: double.infinity,
                      height: 740.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0.0, 15.0),
                              blurRadius: 15.0),
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0.0, -10.0),
                              blurRadius: 10.0),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
