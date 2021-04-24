import 'package:Calculator/screens/area/Circle/circlefeet.dart';
import 'package:Calculator/screens/area/Parallelogram/parafeet.dart';
import 'package:Calculator/screens/area/Square&Rectangle/recareafoot.dart';
import 'package:Calculator/screens/area/Trapezoid/trapezoidfeet.dart';
import 'package:Calculator/screens/area/Triangle/trianglefeet.dart';
import 'package:flutter/material.dart';

class AreasUnit extends StatefulWidget {
  @override
  _AreasUnitState createState() => _AreasUnitState();
}

class _AreasUnitState extends State<AreasUnit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Area Unit'),
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Container(
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
                          'images/area.PNG',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Hero(
                  tag: "recf",
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RecAreaFoot()),
                      );
                    },
                    child: Text(
                      'Square and Rectangle Area',
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
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Hero(
                  tag: 'trap',
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TrapezoidFeet()),
                      );
                    },
                    child: Text(
                      'Trapezoid',
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
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Hero(
                  tag: 'tri',
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TriangleFeet()),
                      );
                    },
                    child: Text(
                      'Triangle Area',
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
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Hero(
                  tag: 'cir',
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CircleFeet()),
                      );
                    },
                    child: Text(
                      'Circle Area',
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
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Hero(
                  tag: 'para',
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ParaFeet()),
                      );
                    },
                    child: Text(
                      'Parallegram Area',
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
      ),
    );
  }
}
