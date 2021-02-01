import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui' show lerpDouble;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  final pages = [
    Dashboard(),
    Akademik(),
    Kemahasiswaan(),
    Profile(),
  ];

  int selectedIndex = 0;

  void onTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Tugas UTS'),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            title: Text('Dashboard'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('Akademik'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text('Kemahasiswaan'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_sharp),
            title: Text('Profile'),
          ),
        ],
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue[700],
        onTap: onTap,
      ),
      body: pages.elementAt(selectedIndex),
    );
  }
}

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: new Container(
        margin: EdgeInsets.fromLTRB(0, 60, 0, 40),
          child: new Column(
            children: [
              ListTile(
                title: Text('Fauzan Aldi Alfianto',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0, color: Colors.black)),
                subtitle: Text('0110218042',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.0)),
                leading: Icon(
                  Icons.account_circle_sharp,
                  size: 60.0,
                  color: Colors.grey[300],
                ),
              ),
              new Container(
                margin: EdgeInsets.fromLTRB(20, 40, 20, 40),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Perkuliahan Selasa 27 Oct', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16.0, color: Colors.black))
                ),

              ),
              new Container(
                margin: EdgeInsets.fromLTRB(20, 40, 20, 40),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Pengumuman', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16.0, color: Colors.black))
                ),

              ),
            ],
          ),
        ),

    );
  }
}

class Akademik extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(40, 40, 40, 40),
            decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(16.0),
              color: Colors.blue[700],
            ),
            child:
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Jadwaltab())
                );
              },
              child: Text(' Jadwal '),
              textColor: Colors.white,
              color: Colors.blue[700],
              padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
            ),

            // child: new Icon(
            //
            // ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(40, 40, 40, 40),
            decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(16.0),
              color: Colors.blue[700],
            ),
            child:
            RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Jadwaltab())
                );
              },
              child: Text(' KHS '),
              textColor: Colors.white,
              color: Colors.blue[700],
              padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(40, 40, 40, 40),
            decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(16.0),
              color: Colors.blue[700],
            ),
            child:
            RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Jadwaltab())
                );
              },
              child: Text(' Kehadiran '),
              textColor: Colors.white,
              color: Colors.blue[700],
              padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(40, 40, 40, 40),
            decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(16.0),
              color: Colors.blue[700],
            ),
            child:
            RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Jadwaltab())
                );
              },
              child: Text(' Keuangan '),
              textColor: Colors.white,
              color: Colors.blue[700],
              padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(40, 40, 40, 40),
            decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(16.0),
              color: Colors.blue[700],
            ),
            child:
            RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Jadwaltab())
                );
              },
              child: Text(' Bimbingan '),
              textColor: Colors.white,
              color: Colors.blue[700],
              padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(40, 40, 40, 40),
            decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(16.0),
              color: Colors.blue[700],
            ),
            child:
            RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Jadwaltab())
                );
              },
              child: Text(' Pengaduan '),
              textColor: Colors.white,
              color: Colors.blue[700],
              padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(40, 40, 40, 40),
            decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(16.0),
              color: Colors.blue[700],
            ),
            child:
            RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Jadwaltab())
                );
              },
              child: Text(' Tugas Akhir '),
              textColor: Colors.white,
              color: Colors.blue[700],
              padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
            ),
          ),
        ],
      ),
    );
  }
}

class Kemahasiswaan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center (
      child: Text('Kemahasiswaan'),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center (
      child: Text('Profile'),
    );
  }
}

class  Jadwaltab extends StatefulWidget {
  @override
  _Jadwaltab createState() => _Jadwaltab();
}

class _Jadwaltab extends State<Jadwaltab> with SingleTickerProviderStateMixin {

  //create controller untuk tabBar
  TabController controller;

  @override

  void initState(){
    controller = new TabController(vsync: this, length: 2);
    //tambahkan SingleTickerProviderStateMikin pada class _HomeState
    super.initState();
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //create appBar
      appBar: new AppBar(
        //warna background
        backgroundColor: Colors.blue[700],
        //judul
        title: new Text("Jadwal "),
        //bottom
        bottom: new TabBar(
          indicatorColor: Colors.blue[300],
          controller: controller,
          //source code lanjutan
          tabs: <Widget>[
            new Tab(text: "Kuliah",),
            new Tab(text: "Ujian",),
          ],
        ),
      ),
    );
  }
}
