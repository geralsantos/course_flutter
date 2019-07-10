
import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(home:LoginWidget()));

class LoginWidget extends StatefulWidget {

  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      
      body: Stack(
        fit: StackFit.expand,
            children: <Widget>[ 
              SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 50.0, left: 40.0,right: 40.0),
            child: Column(
            children: <Widget>[ 
new Container(
                    width: double.infinity,
                    height: 700.0,
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
                        
                      ]
                    )
                  )
                      
                  ],
                ), 
          ),
      ),
            ],

         
      ),
    );
  }
}


