import 'package:flutter/material.dart';

class RccFoot extends StatefulWidget {
  @override
  _RccFootState createState() => _RccFootState();
}

class _RccFootState extends State<RccFoot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('RCC Concrete Beam Calculation'),
      ),
      drawer: Drawer(),
      body: Hero(
        tag: "footc",
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 10, top: 10),
                    child: Image.asset(
                      'images/rmeter.PNG',
                      width: 120,
                      height: 120,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Center(
                    child: Text(
                      'Diemension of Beam',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
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
                          'Height (H)',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 170,
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
                                  'Ft',
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
                      margin: EdgeInsets.only(top: 10),
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
                                width: 170,
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
                                    'Ft',
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
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Thickness (T)',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 170,
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
                                    'Ft',
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Concrete Ratio',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Column(
                            children: [
                              Container(
                                width: 70,
                                height: 50,
                                child: TextField(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.grey[800],
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Cement',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width: 70,
                                height: 50,
                                child: TextField(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.grey[800],
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Sand',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width: 120,
                                height: 50,
                                child: TextField(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.grey[800],
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Aggregate',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ],
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Dry Volume',
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
                          Container(
                            width: 40,
                            child: Text(
                              'Cement Bag',
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
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
                          child: Image.asset(
                            'images/rlength.PNG',
                            width: 120,
                            height: 100,
                          ),
                        ),
                        Container(
                          width: 200,
                          child: Center(
                            child: Text(
                              'Number of total steel\npieces',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Long bar (L)',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 170,
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
                                    'Nos',
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
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Ties bar (T)',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 170,
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
                                    'Nos',
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
                      margin: EdgeInsets.only(left: 2, right: 2),
                      child: Divider(
                        height: 30,
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Image.asset(
                              'images/rt.PNG',
                              width: 120,
                              height: 100,
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'T bar steel Dia',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 80,
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
                                          borderRadius:
                                          BorderRadius.circular(10),
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
                                margin: EdgeInsets.only(top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'L bar steel Dia',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13),
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 80,
                                          height: 50,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              filled: true,
                                              fillColor: Colors.grey[800],
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.only(
                                                  bottomLeft:
                                                  Radius.circular(10),
                                                  topLeft:
                                                  Radius.circular(10),
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
                                            borderRadius:
                                            BorderRadius.circular(10),
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
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Divider(
                        height: 30,
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '1 Cement bag',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 170,
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
                                    'price',
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
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Steel 1 Kg Price',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 170,
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
                                    'price',
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
                      margin:
                          EdgeInsets.symmetric(vertical: 35, horizontal: 35),
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(10)),
                      child: FlatButton(
                        onPressed: () {},
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
                        height: 10,
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
                        height: 10,
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 100),
                      child: Text(
                        'Quantity of beam Steel Results:',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 2, right: 2),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 60),
                      child: Text(
                        'Quantity of Column Concrete Results:',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 2, right: 2),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 100,
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
