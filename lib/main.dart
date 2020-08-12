import 'package:flutter/material.dart';

//Membuat card desain
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //CircleAvatar() avatar digunakan untuk membuat foto menjadi bundar
            //didalam CircleAvatar() kita bise gunakan properti radius: 50.0, dan backgroundcolor
            //kalau ingin membuat foto sendiri gunakan backgroundImage() lalu gunakan Widget AssetImage(masukkan lokasi gambar yang sudah didaftarkan pada pubspec.yaml )
            CircleAvatar(
              //radius gigunakan untuk membuat lengkungan gambar/bulat
              radius: 50.0,
              backgroundImage: AssetImage('assets/images/ardi.jpg'),
              //gunakan backgroundImage: AssetImage('assets/images/ardi.jpg'), untuk melocal gambar
            ),
            //widget Text() bisa digunakan sendiri tanpa harus pakai child dari Widget utama
            //didalam widget Text() bisa gunakan properti style: lalu gunakan TextStyle()
            //didalam TextStyle() bisa gunakan properti fontsize:40.0, color:Colors.white, fontweight:FontWeight.bold,
            Text(
              'Ardiyansah Herman',
              style: TextStyle(
                  //untuk font family kita bisa ambil/download dari internet seperti google font. terlebih dahulu download fontnya
                  //dan didalam project buatkan folder font untuk menyimpan font yang dibuat seperti font Pacifico dari google font
                  //dan folder serta font yang didownload daftarkan ke pubspec.yaml sebagai assets
                  //barulah font tersebut bisa dipakai didalam project
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),

            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  color: Colors.teal.shade100,
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold),
            ),

            //SizedBox() digunakan untuk pemisah antara block element
            SizedBox(
              //didalam SizedBox() kita bisa membuat garis horizontal dengan memberikan widget Divider()
              //Widget Divider() sebelumnya harus dibuat dengan sebagai child dari SizedBox()
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),

            //pengunaan widget Card
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                  '+62 822 9149 4455',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.teal.shade900,
                      fontFamily: 'SourceSansPro'),
                ),
              ),
            ),

            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text(
                  'ardiyansahherman92@gmail.com',
                  style: TextStyle(
                      fontSize: 19.0,
                      color: Colors.teal.shade900,
                      fontFamily: 'SourceSansPro'),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
