import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Aplikasi Kayuhin',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Profil'), centerTitle: true,
            backgroundColor: Colors.amber,
            leading:
            new IconButton(icon: new Icon(Icons.home, color: Colors.white)),
            //Menambahkan Beberapa Action Button
            actions: <Widget>[
              new IconButton(icon: new Icon(Icons.call, color: Colors.white)),
              new IconButton(icon: new Icon(Icons.search, color: Colors.white)),
            ],
          ),
          body: MyHomePage(),
        ));
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
            children: <Widget>[
              SizedBox(height: 50.0,),
          CircleAvatar(
          backgroundImage: NetworkImage('https://si.undiksha.ac.id/photoUploads/71a7ed63825f5f443e5cd966e568237a20180827020856.jpg'),
          radius: 100.0,
            ),
              SizedBox(height: 30.0,),
              Text('Ni Made Ayu Mita Kusumadewi',
              style: TextStyle(fontSize: 24, fontFamily: "Serif", height: 2.0),
              ),
               Text('NIM : 1815091040',style: TextStyle(fontSize: 20, fontFamily: "Serif", height: 2.0),),
              SizedBox(width: 50.50,),
            Row (mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 30.0,),
                new Column( mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                    new Icon(Icons.add_location, color: Colors.red[900], size: 100.100),
                    Text('Karangasem',
                      style: TextStyle(fontSize: 24, fontFamily: "Serif", height: 1.0), )
                    ],
                    ),
                SizedBox(width: 40.0,),
                new Column( mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                    new Icon(Icons.home, color: Colors.red[900], size: 100.100),
                    Text('Aplikasi',
                        style: TextStyle(fontSize: 24, fontFamily: "Serif", height: 1.0),),
                    ],
                ),
              ],
              ),
              Column(
                children: <Widget>[
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                      SizedBox(height: 30.0,),
                        new Column( mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                             new Icon(Icons.music_note, color: Colors.red[900], size: 100.100),
                          Text('All',
                          style: TextStyle(fontSize: 24, fontFamily: "Serif", height: 1.0), )
                          ],
                          ),
                        SizedBox(width: 50.0,),
                        new Column( mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            new Icon(Icons.local_convenience_store, color: Colors.red[900], size: 100.100),
                            Text('Undiksha',
                              style: TextStyle(fontSize: 24, fontFamily: "Serif", height: 1.0), )
                          ],
                        ),
                  ],
                  ),

                ],
              ),

            ],
    ),
    );
  }
}