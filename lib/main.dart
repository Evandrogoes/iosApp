import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter Demo',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.book_solid),
            label: 'Article',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.eye_solid),
            label: 'Views',
          )
        ]),
        tabBuilder: (context, i) {
          return CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              middle: (i == 0) ? Text('Articles') : Text('Views'),
            ),
            child: Center(
              child: Text(
                'This is tab #$i',
                style:
                    CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
              ),
            ),
          );
        });
  }
}
