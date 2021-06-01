import 'package:flutter/material.dart';
import 'package:home/Tanah/Tanah1.dart';
import 'package:home/Bangunan/Bangunan1.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new ListTile(
              title: new Text("Setting"),
              trailing: new Icon(Icons.settings),
            ),
            new ListTile(
                title: new Text("Close"), trailing: new Icon(Icons.close)),
          ],
        ),
      ),
      body: Page(),
    );
  }
}

class Page extends StatefulWidget {
  PageState createState() => PageState();
}

class PageState extends State<Page> {
  final controller = PageController(
    initialPage: 1,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        leading: Icon(Icons.menu),
        actions: [Icon(Icons.search)],
        // bottom: TabBar(
        //   tabs: <Widget>[
        //     Tab(
        //       text: 'Tanah',
        //     ),
        //     Tab(
        //       text: "Bangunan",
        //     ),
        //   ],
        // ),
      ),
      body: Container(
        child: PageView(
          controller: controller,
          onPageChanged: (page) => {print(page.toString())},
          pageSnapping: true,
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              child: ListView(
                children: <Widget>[
                  _tanahAsset(),
                  _tanahAsset2(),
                  _tanahAsset3(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: ListView(
                children: <Widget>[
                  _bangunanAsset(),
                  // _titleImage(),
                  // _buttonImage(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _tanahAsset() {
    return Column(
      children: <Widget>[
        Image(image: AssetImage("img/as.png")),
        Padding(
          padding: EdgeInsets.all(10.0),
        ),
        Text(
          "Lombok Barat",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10.0),
        ),
        Text(
          "Tanah Kosong Yang Sudah Diperuntukkan",
          style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
              fontStyle: FontStyle.italic),
        ),
        Padding(
          padding: EdgeInsets.only(top: 5.0),
        ),
        Text("Jalan Raya Suranadi Lembuak Kec. Narmada Kab. Lombok Barat"),
        Padding(
          padding: EdgeInsets.only(top: 16.0),
        ),
        FlatButton(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            width: double.infinity,
            child: Text("Selengkapnya",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Info1();
            }));
          },
        ),
      ],
    );
  }

  Widget _tanahAsset2() {
    return Column(
      children: <Widget>[
        Image(image: AssetImage("img/as.png")),
        Padding(
          padding: EdgeInsets.all(10.0),
        ),
        Text(
          "Lombok Barat",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10.0),
        ),
        Text(
          "Tanah Kosong Yang Sudah Diperuntukkan",
          style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
              fontStyle: FontStyle.italic),
        ),
        Padding(
          padding: EdgeInsets.only(top: 5.0),
        ),
        Text("Jalan Raya Suranadi Lembuak Kec. Narmada Kab. Lombok Barat"),
        Padding(
          padding: EdgeInsets.only(top: 16.0),
        ),
        FlatButton(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            width: double.infinity,
            child: Text("Selengkapnya",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Info1();
            }));
          },
        ),
      ],
    );
  }

  Widget _tanahAsset3() {
    return Column(
      children: <Widget>[
        Image(image: AssetImage("img/as.png")),
        Padding(
          padding: EdgeInsets.all(10.0),
        ),
        Text(
          "Lombok Barat",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10.0),
        ),
        Text(
          "Tanah Kosong Yang Sudah Diperuntukkan",
          style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
              fontStyle: FontStyle.italic),
        ),
        Padding(
          padding: EdgeInsets.only(top: 5.0),
        ),
        Text("Jalan Raya Suranadi Lembuak Kec. Narmada Kab. Lombok Barat"),
        Padding(
          padding: EdgeInsets.only(top: 16.0),
        ),
        FlatButton(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            width: double.infinity,
            child: Text("Selengkapnya",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Info1();
            }));
          },
        ),
      ],
    );
  }

  Widget _bangunanAsset() {
    return Column(
      children: <Widget>[
        Image(image: AssetImage("img/s.jpeg")),
        Padding(
          padding: EdgeInsets.all(10.0),
        ),
        Text(
          "Lombok Barat",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10.0),
        ),
        Text(
          "Rumah Negara Golongan II Type A Permanen",
          style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
              fontStyle: FontStyle.italic),
        ),
        Padding(
          padding: EdgeInsets.only(top: 5.0),
        ),
        Text("Jl. TGH Saleh Hambali Komplek BLK No. C4/27 Dasan Cermen"),
        Padding(
          padding: EdgeInsets.only(top: 16.0),
        ),
        FlatButton(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              width: double.infinity,
              child: Text("Selengkapnya",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Bangunan1();
              }));
            }),
      ],
    );
  }
}
