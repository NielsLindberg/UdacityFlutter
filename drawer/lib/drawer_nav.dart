import 'package:flutter/material.dart';
import 'login_screen.dart';

class DrawerNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Drawer(
        child: Container(
            padding: EdgeInsets.zero,
            color: Colors.blueGrey[900],
            child: ListView(children: <Widget>[
              DrawerHeader(
                child: Text('Drawer Header'),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment(
                        0.0, 0.0), // 10% of the width, so there are ten blinds.
                    colors: [
                      Colors.deepOrange,
                      Colors.pinkAccent
                    ], // whitish to gray
                    tileMode:
                        TileMode.mirror, // repeats the gradient over the canvas
                  ),
                ),
              ),
              ListTile(
                  title: Text('Item 1'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  }),
              ListTile(
                  title: Text('Item 2'),
                  onTap: () {
                    Navigator.pop(context);
                  }),
              ListTile(
                  title: Text('Item 3'),
                  onTap: () {
                    Navigator.pop(context);
                  }),
              ListTile(
                  title: Text('Item 4'),
                  onTap: () {
                    Navigator.pop(context);
                  })
            ])));
  }
}
