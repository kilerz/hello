import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Farika Riau Perkasa ';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 12, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Transaksi',
      style: optionStyle,
    ),
    Text(
      'Pesanan',
      style: optionStyle,
    ),
    Text(
      'Notifikasi',
      style: optionStyle,
    ),
    Text(
      'Akun',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Farika Riau Perkasa'),
        backgroundColor: Colors.lightGreen[900],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,size: 30,),
            title: Text('Beranda'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.playlist_add_check,size: 30,),
            title: Text('Transaksi'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart,size: 30,),
            title: Text('Pesanan'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications,size: 30,),
            title: Text('Notifikasi'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.face,size: 30,),
            title: Text('Akun'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
        backgroundColor: Colors.lightGreen[900],
      ),
    );
  }
}

//
//void main() {
//  runApp(new MaterialApp(
//    home: new Style(),
//  ));
//}
//
//class hello_page extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      body: new Text("hallo guys"),
//    );
//  }
//}
//
//class Style extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      body: new Container(
//        color: Colors.green,
//        width: 200.0,
//        height: 100.0,
//        child: new Center(
//          child: new Text("Harisandy",
//              style: new TextStyle(
//                  color: Colors.white, fontFamily: "Serif", fontSize: 20.0)),
//        ),
//      ),
//    );
//  }
//}
