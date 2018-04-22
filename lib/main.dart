import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(new MaterialApp(
  theme: new ThemeData(
    primaryColor: Colors.redAccent,
    accentColor: Colors.yellowAccent,
  ),
  debugShowCheckedModeBanner: false,
  home:SplashScreen(),
//  routes: routes,
));

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds:5) , ()=> print("Splash Done"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Stack(
        fit:StackFit.expand,
        children: <Widget>[
          Container(
            decoration:new  BoxDecoration(color: Colors.redAccent),
          ),
          Column(
            mainAxisAlignment:  MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 50.0,
                        child: new Icon(
                          Icons.ac_unit,
                          color: Colors.greenAccent,
                          size: 50.0,

                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10.0),),
                      new Text(
                        "Inside Edge!",
                        style:new  TextStyle(color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold
                      ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Padding(
                      padding: EdgeInsets.only(top: 24.0),
                    ),
                    new Text("Welcome",
                      style:new  TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,

                    ),
                    ),
                  ],
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
