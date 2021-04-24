import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<String> images = [
    "images/area.PNG",
    "images/blocks.PNG",
    "images/mortar.jpg",
    "images/cube.PNG",
    "images/paint.PNG",
    "images/plaster.PNG",
    "images/rccbeam.PNG",
    "images/rcccolumn.PNG",
    "images/rcc.PNG",
    "images/room.PNG",
    "images/slab.PNG",
    "images/steel.PNG",
    "images/tiles.PNG",
    "images/uc.PNG"
  ];
  List<String> routes = [
    '/area',
    '/block',
    '/bricks',
    '/concreteUnit',
    '/paint',
    '/plasterUnit',
    '/rccbeam',
    '/rcccolumn',
    '/rccSlab',
    '/room',
    '/slab',
    '/steel',
    '/tiles',
    '/unitConverter',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Center(
          child: Text(
            'Construction Calculator',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        shrinkWrap: true,
        children: List.generate(
          14,
          (index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, routes[index]);
                },
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(images[index]),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
