import 'package:Calculator/screens/Round/roundfoot.dart';
import 'package:Calculator/screens/Round/roundmeter.dart';
import 'package:Calculator/screens/concrete/concretefoot.dart';
import 'package:Calculator/screens/concrete/concretemeter.dart';
import 'package:flutter/material.dart';

class ConcreteUnit extends StatefulWidget {
  @override
  _ConcreteUnitState createState() => _ConcreteUnitState();
}

class _ConcreteUnitState extends State<ConcreteUnit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Concrete Unit'),
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(bottom: 40),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 25, bottom: 25),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Calculate Cube and Slab Concrete',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        child: Image.asset(
                          'images/cube.PNG',
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
                              tag: "footco",
                              child: FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ConcreteFoot()),
                                  );
                                },
                                child: Text(
                                  'Concrete\nFoot',
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
                              tag: "meterco",
                              child: FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ConcreteMeter()),
                                  );
                                },
                                child: Text(
                                  'Concrete\nMeter',
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Calculate Round Concrete',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        child: Image.asset(
                          'images/round.PNG',
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
                              tag: "footcom",
                              child: FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => RoundFoot()),
                                  );
                                },
                                child: Text(
                                  'Concrete\nFoot',
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
                              tag: "metercom",
                              child: FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => RoundMeter()),
                                  );
                                },
                                child: Text(
                                  'Concrete\nMeter',
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
            ],
          ),
        ),
      ),
    );
  }
}
