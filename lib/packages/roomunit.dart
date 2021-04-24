import 'package:Calculator/screens/room/roomfoot.dart';
import 'package:Calculator/screens/room/roommeter.dart';
import 'package:flutter/material.dart';

class RoomUnit extends StatefulWidget {
  @override
  _RoomUnitState createState() => _RoomUnitState();
}

class _RoomUnitState extends State<RoomUnit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Total Room Brick Unit'),
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
                        'images/room.PNG',
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
                tag: "footr",
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RoomFoot()),
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
                tag: "meterr",
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RoomMeter()),
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
