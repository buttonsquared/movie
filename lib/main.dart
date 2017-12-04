import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';

TextStyle header = new TextStyle(
    color: Colors.black.withOpacity(1.0),
    fontSize: 24.0,
    fontWeight: FontWeight.w900,
    fontFamily: 'Arial')
);


final ThemeData kIOSTheme = new ThemeData(
  primarySwatch: Colors.orange,
  primaryColor: Colors.grey[100],
  primaryColorBrightness: Brightness.light,
);

final ThemeData kDefaultTheme = new ThemeData(
  primarySwatch: Colors.purple,
  accentColor: Colors.orangeAccent[400],
);

void main() {
  runApp(new listingPage());
}

class listingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Friendlychat",
      theme: defaultTargetPlatform == TargetPlatform.iOS
          ? kIOSTheme
          : kDefaultTheme,
      home: new MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new SingleChildScrollView (
            child: new Column(
                textDirection: TextDirection.ltr,
                children: [
                  new Padding(
                    padding: const EdgeInsets.all(30.0),
                  ),
                  new Center (
                      child: new Text("MOVIE", style: header)
                  ),
                  new Container (
                      alignment: Alignment.centerLeft,
                      child: new Row (
                        children: <Widget>[
                          new Image.asset(
                            posterUrl,
                            fit: BoxFit.cover,
                            width: width,
                            height: height,
                          )
                        ],
                      )
                  ),
                ]
            )
        )
    );
  }
}