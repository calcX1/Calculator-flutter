import 'dart:ui';

import 'package:Calculator/screens/bricks/bricksfoot.dart';
import 'package:Calculator/screens/bricks/bricksmeter.dart';
import 'package:Calculator/screens/circle/circlefoot.dart';
import 'package:Calculator/screens/circle/circlemeter.dart';
import 'package:Calculator/screens/volume/volumefoot.dart';
import 'package:Calculator/screens/volume/volumemeter.dart';
import 'package:flutter/material.dart';

class BricksUnit extends StatefulWidget {
  @override
  _BricksUnitState createState() => _BricksUnitState();
}

class _BricksUnitState extends State<BricksUnit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Bricks Unit'),
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(bottom: 40),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 25, bottom: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Calculate Bricks Wall',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      child: Image.asset(
                        'images/wall.jpg',
                        width: 150,
                        height: 150,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.only(
                                topLeft: const Radius.circular(10),
                                bottomLeft: const Radius.circular(10)),
                          ),
                          child: Hero(
                            tag: "footb",
                            child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BricksFoot()),
                                );
                              },
                              child: Text(
                                'Foot',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        VerticalDivider(
                          width: 2,
                        ),
                        Container(
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.only(
                              topRight: const Radius.circular(10),
                              bottomRight: const Radius.circular(10),
                            ),
                          ),
                          child: Hero(
                            tag: "meterb",
                            child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BricksMeter()),
                                );
                              },
                              child: Text(
                                'Meter',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, right: 15),
                child: Divider(
                  height: 20,
                  color: Colors.grey,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25, bottom: 25),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'Calculate Circle Bricks Wall',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        child: Image.asset(
                          'images/circle.png',
                          width: 150,
                          height: 150,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.only(
                                  topLeft: const Radius.circular(10),
                                  bottomLeft: const Radius.circular(10)),
                            ),
                            child: Hero(
                              tag: "footc",
                              child: FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CircleFoot()),
                                  );
                                },
                                child: Text(
                                  'Foot',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          VerticalDivider(
                            width: 2,
                          ),
                          Container(
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.only(
                                topRight: const Radius.circular(10),
                                bottomRight: const Radius.circular(10),
                              ),
                            ),
                            child: Hero(
                              tag: "meterc",
                              child: FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CircleMeter()),
                                  );
                                },
                                child: Text(
                                  'Meter',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, right: 15),
                child: Divider(
                  height: 20,
                  color: Colors.grey,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'Calculate Volume To Bricks',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        child: Image.asset(
                          'images/wall.jpeg',
                          width: 150,
                          height: 150,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.only(
                                  topLeft: const Radius.circular(10),
                                  bottomLeft: const Radius.circular(10)),
                            ),
                            child: Hero(
                              tag: "footv",
                              child: FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => VolumeFoot()),
                                  );
                                },
                                child: Text(
                                  'Foot',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          VerticalDivider(
                            width: 2,
                          ),
                          Container(
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.only(
                                topRight: const Radius.circular(10),
                                bottomRight: const Radius.circular(10),
                              ),
                            ),
                            child: Hero(
                              tag: "meterv",
                              child: FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => VolumeMeter()),
                                  );
                                },
                                child: Text(
                                  'Meter',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
