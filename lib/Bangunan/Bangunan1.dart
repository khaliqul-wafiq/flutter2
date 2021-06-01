import 'package:flutter/material.dart';

class Bangunan1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue[300],
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  _imageAset(),
                  _penjelasanAset(),
                  // _buttonAset(),
                ],
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        actions: [Icon(Icons.group_outlined)],
        title: Text("Info Tanah"),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}

Widget _imageAset() {
  return Container(
      child: Card(
    child: Image(
      image: AssetImage("img/as.png"),
    ),
    elevation: 5,
    color: Colors.grey[200],
  ));
}

Widget _penjelasanAset() {
  return Card(
    color: Colors.blue[100],
    // clipBehavior: Clip.antiAlias,
    child: Column(
      children: [
        ListTile(
          leading: Icon(Icons.home),
          title: const Text('Tanah Kosong Yang Sudah Diperuntukkan'),
          subtitle: Text(
            'Tersedia',
            style: TextStyle(color: Colors.lightGreenAccent[900]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: new Column(
            children: <Widget>[
              new Row(
                children: <Widget>[
                  Icon(
                    Icons.confirmation_number_outlined,
                    color: Colors.blueAccent,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0),
                  ),
                  Text("Nomor Sertifikat"),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0),
                  ),
                  Text(":"),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0),
                  ),
                  Text("40"),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
              ),
              new Row(
                children: <Widget>[
                  Icon(
                    Icons.query_stats_outlined,
                    color: Colors.blueAccent,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0),
                  ),
                  Text("Status Sertifikat"),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0),
                  ),
                  Text(":"),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0),
                  ),
                  Text("Hak Pakai"),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
              ),
              new Row(
                children: <Widget>[
                  Icon(
                    Icons.date_range_outlined,
                    color: Colors.blueAccent,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0),
                  ),
                  Text("Tanggal Sertifikat"),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0),
                  ),
                  Text(":"),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0),
                  ),
                  Text("8 - Maret - 2003"),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
              ),
              new Row(
                children: <Widget>[
                  Icon(
                    Icons.screen_lock_portrait_outlined,
                    color: Colors.blueAccent,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0),
                  ),
                  Text("Luas"),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0),
                  ),
                  Text(":"),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0),
                  ),
                  Text("2,546 m2"),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
              ),
              new Row(
                children: <Widget>[
                  Icon(
                    Icons.perm_device_information,
                    color: Colors.blueAccent,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0),
                  ),
                  Text("Keterangan"),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0),
                  ),
                  Text(":"),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0),
                  ),
                  Text("Tanah Kosong"),
                ],
              ),
            ],
          ),
        ),
        FlatButton(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            width: double.infinity,
            child: Text(
              "Ajukan Penyewaan",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          onPressed: () {},
        ),
      ],
    ),
  );
}
