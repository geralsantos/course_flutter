import 'package:flutter/material.dart';

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
            )
          ),
          SingleChildScrollView( 
            child: Padding( 
              padding: EdgeInsets.only(top: 90.0, left: 40.0, right: 40.0,bottom: 90.0),
              child: Column( 
                children: <Widget>[
                  
                  new Container(
                    
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          new Text(
                            "Pichanga Go!",
                            style: new TextStyle(
                              fontFamily: 'UbuntuRegular',
                              fontSize: 35.0,
                            ),
                          ),
                          new TextField(
                            decoration: new InputDecoration(hintText: 'Ingrese un texto.'),
                            style: TextStyle(
                              fontFamily: "UbuntuRegular",
                            ),
                          ),
                          new TextField(
                            decoration: new InputDecoration(hintText: 'Ingrese un texto.'),
                          ),
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
        ],
      ),
    );
  }
}
