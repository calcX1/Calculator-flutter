import 'package:Calculator/screens/paint/paintfoot.dart';
import 'package:Calculator/screens/paint/paintmeter.dart';
import 'package:flutter/material.dart';

class PaintUnit extends StatefulWidget {
  @override
  _PaintUnitState createState() => _PaintUnitState();
}

class _PaintUnitState extends State<PaintUnit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Paint Unit'),
      ),
      drawer: Drawer(),
      body: Container(
        margin: EdgeInsets.only(bottom: 40),
        child: Column(
          children: [
            Container(
              child: Center(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(3),
                      child: Image.asset(
                        'images/paint.PNG',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 300,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Hero(
                tag: "footp",
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PaintFoot()),
                    );
                  },
                  child: Text(
                    'Foot',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Hero(
                tag: "meterp",
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PaintMeter()),
                    );
                  },
                  child: Text(
                    'Meter',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
