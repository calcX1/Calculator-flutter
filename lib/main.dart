import 'package:Calculator/packages/areasunit.dart';
import 'package:Calculator/packages/blocksunit.dart';
import 'package:Calculator/packages/bricksunit.dart';
import 'package:Calculator/packages/concreteunit.dart';
import 'package:Calculator/packages/paintunit.dart';
import 'package:Calculator/packages/plasterunit.dart';
import 'package:Calculator/packages/rccconcreatebeamunit.dart';
import 'package:Calculator/packages/rccconcretecolumn.dart';
import 'package:Calculator/packages/rccslabunit.dart';
import 'package:Calculator/packages/roomunit.dart';
import 'package:Calculator/packages/slabunit.dart';
import 'package:Calculator/packages/steelunit.dart';
import 'package:Calculator/packages/tilesunit.dart';
import 'package:Calculator/packages/unitconverter.dart';
import 'package:Calculator/screens/dashboard/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Dashboard(),
        '/area': (context) => AreasUnit(),
        '/block': (context) => BlocksUnit(),
        '/bricks': (context) => BricksUnit(),
        '/concreteUnit': (context) => ConcreteUnit(),
        '/paint': (context) => PaintUnit(),
        '/plasterUnit': (context) => PlasterUnit(),
        '/rccbeam': (context) => RccConcreateBeamUnit(),
        '/rcccolumn': (context) => RccColumnUnit(),
        '/rccSlab': (context) => RccSlabUnit(),
        '/room': (context) => RoomUnit(),
        '/slab': (context) => SlabUnit(),
        '/steel': (context) => SteelUnit(),
        '/tiles': (context) => TilesUnit(),
        '/unitConverter': (context) => UnitConverter(),
      },
    );
  }
}
