import 'package:Calculator/screens/unitconverter/area.dart';
import 'package:Calculator/screens/unitconverter/distance.dart';
import 'package:Calculator/screens/unitconverter/volume.dart';
import 'package:Calculator/screens/unitconverter/weight.dart';
import 'package:flutter/material.dart';

class UnitConverter extends StatefulWidget {
  @override
  _UnitConverterState createState() => _UnitConverterState();
}

class _UnitConverterState extends State<UnitConverter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Unit Converter'),
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
                          'images/uc.PNG',
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
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Hero(
                  tag: "dis",
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Distance()),
                      );
                    },
                    child: Row(
                      children: [
                        Image.asset('images/distance.png'),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Distance',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Hero(
                  tag: "ar",
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Area()),
                      );
                    },
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'images/area1.png',
                          width: 40,
                          height: 40,
                        ),
                        SizedBox(
                          width: 45,
                        ),
                        Text(
                          'Area',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Hero(
                  tag: "vol",
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Volume()),
                      );
                    },
                    child: Row(
                      children: [
                        SizedBox(
                          width: 3,
                        ),
                        Image.asset(
                          'images/volume.png',
                          width: 50,
                          height: 50,
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          'Volume',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Hero(
                  tag: "wt",
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Weight()),
                      );
                    },
                    child: Row(
                      children: [
                        SizedBox(
                          width: 3,
                        ),
                        Image.asset(
                          'images/weight.png',
                          width: 50,
                          height: 50,
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          'Weight',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ],
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
