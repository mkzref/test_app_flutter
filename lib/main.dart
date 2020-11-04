import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(

      home: MyNavigationBar(),
      routes: {
        // When navigating to the "/" route, build the Main widget.

        '/messages': (context) => Messages(),
        '/settings': (context) => Settings()
      },

    );
  }
}
class MyNavigationBar extends StatefulWidget {
  MyNavigationBar ({Key key}) : super(key: key);

  @override
  MyWidget createState() => MyWidget();
}

class MyWidget extends  State <MyNavigationBar>{
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'HOME PAGE',
      style: optionStyle,
    ),
    Text(
      'COURSE PAGE',
      style: optionStyle,
    ),
    Text(
      'CONTACT GFG',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
            title: Text('Sample Code')
        ),
        body:Center(
        child:Column(
          children: [
            _widgetOptions.elementAt(_selectedIndex),
           Text('Welcome'),
          ],

        )),
        drawer: Drawer (
          child:ListView(
            padding:  EdgeInsets.zero,
              children:<Widget>[

                DrawerHeader(
                  child: Center(child:Text('Nostalgia')),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
                ListTile(
                  title: Text('Messages'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/messages');
                  },
                ),
                ListTile(
                  title: Text('Settings'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/settings');
                  },
                ),
              ],
          ),

        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.lightBlueAccent[100],
          onTap: (int index) {
setState(() {
  _selectedIndex = index;
});

          },
        )

    );
  }


  void _onTap(int value) {
    _selectedIndex = value;
  }
}
class Settings extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MyApp();
  }
}
class Messages extends StatelessWidget {

@override
Widget build(BuildContext context) {
  return MyApp();
}
}