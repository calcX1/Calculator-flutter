import 'package:Calculator/screens/RCCconcreatebeam/depthfoot.dart';
import 'package:Calculator/screens/RCCconcreatebeam/depthmeter.dart';
import 'package:Calculator/screens/RCCconcreatebeam/rccfoot.dart';
import 'package:Calculator/screens/RCCconcreatebeam/rccmeter.dart';
import 'package:flutter/material.dart';

class RccConcreateBeamUnit extends StatefulWidget {
  @override
  _RccConcreateBeamState createState() => _RccConcreateBeamState();
}

class _RccConcreateBeamState extends State<RccConcreateBeamUnit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('RCC Concrete beam calculation'),
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
                        'images/rccbeam.PNG',
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Calculate RCC Beam Quantity',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
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
                                    builder: (context) => RccFoot()),
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
                                    builder: (context) => RccMeter()),
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
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                'Find RCC beam depth, width\n+ volume',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
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
                      tag: "footd",
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DepthFoot()),
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
                      tag: "meterd",
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DepthMeter()),
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
