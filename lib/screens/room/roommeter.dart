import 'package:flutter/material.dart';

class RoomMeter extends StatefulWidget {
  @override
  _RoomMeterState createState() => _RoomMeterState();
}

class _RoomMeterState extends State<RoomMeter> {
  var length = 0,
      width = 0,
      height = 0,
      volume = 0,
      subtractwindowarea = 0,
      totalbricks = 0,
      brickprice = 0,
      quantity = 0,
      cementbags = 0.0,
      cement = 0,
      sand = 0,
      cementbagprice = 0,
      answer1 = 0.0,
      answer2 = 0.0,
      answer3 = 0.0,
      totalnumberofbricks = 0.0,
      totalnumbercementsbagpice = 0.0;

  final TextEditingController l = new TextEditingController(text: "0");
  final TextEditingController w = new TextEditingController(text: "0");
  final TextEditingController h = new TextEditingController(text: "0");

  final TextEditingController wa = new TextEditingController(text: "0");

  final TextEditingController bricp = new TextEditingController(text: "0");

  final TextEditingController qu = new TextEditingController(text: "0");
  final TextEditingController ce = new TextEditingController(text: "0");

  final TextEditingController sa = new TextEditingController(text: "0");

  final TextEditingController cemebag = new TextEditingController(text: "0");

  void calculate() {
    setState(() {
      length = int.parse(l.text);
      width = int.parse(w.text);
      height = int.parse(h.text);
      subtractwindowarea = int.parse(wa.text);
      volume = (length * width * height) - subtractwindowarea;
      brickprice = int.parse(bricp.text);
      quantity = int.parse(qu.text);
      totalbricks = brickprice * quantity;
      cement = int.parse(ce.text);
      sand = int.parse(sa.text);
      cementbags =
          ((((cement / sand) * totalbricks * 1.27) / cement + sand) / 1.25);
      cementbagprice = int.parse(cemebag.text);
      totalnumbercementsbagpice = cementbags * cementbagprice;
      answer1 = ((length / 12) * (width / 12) * (height / 12));
      answer2 = (1 / answer1);
      answer3 = answer2 * 0.5;
      totalnumberofbricks = (volume - subtractwindowarea) * answer3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Total Room Brick Unit'),
      ),
      drawer: Drawer(),
      body: Hero(
        tag: "meterr",
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: Image.asset(
                      'images/wall.jpg',
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Center(
                    child: Text(
                      'Diemension of Room\nWall',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Length (L)',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 190,
                              height: 50,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                controller: w,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.grey[800],
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      topLeft: Radius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.blue[700],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'M',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Width (W)',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 190,
                                height: 50,
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  controller: h,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.grey[800],
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        topLeft: Radius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.blue[700],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    'M',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Height (H)',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 190,
                                height: 50,
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  controller: h,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.grey[800],
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        topLeft: Radius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.blue[700],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    'M',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Thick (T)',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 190,
                                height: 50,
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  controller: wa,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.grey[800],
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        topLeft: Radius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.blue[700],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    'mm',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
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
                      margin: EdgeInsets.only(left: 2, right: 2),
                      child: Divider(
                        height: 30,
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 120,
                            child: Text(
                              'Subtract Window or Door Area',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 150,
                                height: 50,
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  controller: wa,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.grey[800],
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        topLeft: Radius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.blue[700],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    'Sq.M',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 2, right: 2),
                      child: Divider(
                        height: 30,
                        color: Colors.grey,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          child: Image.asset(
                            'images/mortar.jpg',
                            width: 100,
                            height: 100,
                          ),
                        ),
                        Container(
                          width: 200,
                          child: Center(
                            child: Text(
                              'Diemension of Brick with Mortar',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Length (L)',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 190,
                              height: 50,
                              child: TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.grey[800],
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      topLeft: Radius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.blue[700],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'mm',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Width  (W)',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 190,
                                height: 50,
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.grey[800],
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        topLeft: Radius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.blue[700],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    'mm',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Thick',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 80,
                                height: 50,
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.grey[800],
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        topLeft: Radius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 40,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.blue[700],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    'mm',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '1 Brick Price ',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          Container(
                            width: 80,
                            height: 50,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              controller: bricp,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey[800],
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 40,
                            child: Text(
                              '1 Cement Bag',
                              style:
                                  TextStyle(fontSize: 8, color: Colors.white),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 80,
                                height: 50,
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.grey[800],
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        topLeft: Radius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 40,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.blue[700],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    'kg',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Quantity (nos) ',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          Container(
                            width: 60,
                            height: 50,
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey[800],
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              'Mortar Ratio',
                              style:
                                  TextStyle(fontSize: 8, color: Colors.white),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 120,
                                height: 50,
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  controller: ce,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.grey[800],
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                          bottomRight: Radius.circular(10)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 150,
                            height: 50,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              controller: sa,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey[800],
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Cement',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                        Text(
                          'Sand',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 50,
                            child: Text(
                              '1 Cement bag price',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 120,
                                height: 50,
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  controller: cemebag,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.grey[800],
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                          bottomRight: Radius.circular(10)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Dry Volume',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          Container(
                            width: 70,
                            height: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey[800],
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 2, right: 2),
                      child: Divider(
                        height: 30,
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(10)),
                      child: FlatButton(
                        onPressed: calculate,
                        child: Text(
                          'Calculate',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 2, right: 2),
                      child: Divider(
                        height: 30,
                        color: Colors.grey,
                      ),
                    ),
                    Center(
                      child: Text(
                        'Results',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 2, right: 2),
                      child: Divider(
                        height: 30,
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Total Volume',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              Text(
                                'Bricks Cost',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              Text(
                                'Cement Bags',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              Text(
                                'Cement Cost',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              Text(
                                'Sand',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              Text(
                                'Number of Bricks',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
