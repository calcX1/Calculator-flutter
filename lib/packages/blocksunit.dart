import 'package:Calculator/screens/blocks/blocksfoot.dart';
import 'package:Calculator/screens/blocks/blocksmeter.dart';
import 'package:flutter/material.dart';

class BlocksUnit extends StatefulWidget {
  @override
  _BlocksUnitState createState() => _BlocksUnitState();
}

class _BlocksUnitState extends State<BlocksUnit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Blocks Unit'),
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
                        'images/blocks.PNG',
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
                tag: "footbl",
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BlocksFoot()),
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
                tag: "meterbl",
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BlocksMeter()),
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
