import 'package:api2/Modal.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Home(),
      },
    ),
  );
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double crpto = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Crypto Converter"),
        ),
        body: FutureBuilder(
          future: ApiCall(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasError) {
              print("${snapshot.error}");
              return Center(
                child: Text("${snapshot.error}"),
              );
            } else if (snapshot.hasData) {
              modal l1 = snapshot.data;
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("1 BTC ="),
                          Text("${crpto * double.parse("${l1.rates!.bTC}")}"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("1 ETH ="),
                          Text("${crpto * double.parse("${l1.rates!.eTH}")}"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("1 XRP ="),
                          Text("${crpto * double.parse("${l1.rates!.xRP}")}"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("1 USDT ="),
                          Text("${crpto * double.parse("${l1.rates!.uSDT}")}"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("1 BCH ="),
                          Text("${crpto * double.parse("${l1.rates!.bCH}")}"),
                        ],
                      ),
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                        color: Colors.blue),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            "Crypto Converter",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Expanded(child: Container()),
                        Container(
                          child: PopupMenuButton(
                              icon: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.white,
                              ),
                              itemBuilder: (context) {
                                return [
                                  PopupMenuItem(
                                    child: Text("AUD"),
                                    onTap: () {
                                      setState(() {
                                        crpto = 1.40;
                                      });
                                    },
                                  ),
                                  PopupMenuItem(
                                    child: Text("BRL"),
                                    onTap: () {
                                      setState(() {
                                        crpto = 4.96;
                                      });
                                    },
                                  ),
                                  PopupMenuItem(
                                    child: Text("CAD"),
                                    onTap: () {
                                      setState(() {
                                        crpto = 1.28;
                                      });
                                    },
                                  ),
                                  PopupMenuItem(
                                    child: Text("CNY"),
                                    onTap: () {
                                      setState(() {
                                        crpto = 6.61;
                                      });
                                    },
                                  ),
                                  PopupMenuItem(
                                    child: Text("EUR"),
                                    onTap: () {
                                      setState(() {
                                        crpto = 0.95;
                                      });
                                    },
                                  ),
                                  PopupMenuItem(
                                    child: Text("GBP"),
                                    onTap: () {
                                      setState(() {
                                        crpto = .80;
                                      });
                                    },
                                  ),
                                  PopupMenuItem(
                                    child: Text("HKD"),
                                    onTap: () {
                                      setState(() {
                                        crpto = 7.85;
                                      });
                                    },
                                  ),
                                  PopupMenuItem(
                                    child: Text("IDR"),
                                    onTap: () {
                                      setState(() {
                                        crpto = 14497;
                                      });
                                    },
                                  ),
                                  PopupMenuItem(
                                    child: Text("ILS"),
                                    onTap: () {
                                      setState(() {
                                        crpto = 3.31;
                                      });
                                    },
                                  ),
                                  PopupMenuItem(
                                    child: Text("INR"),
                                    onTap: () {
                                      setState(() {
                                        crpto = 76.45;
                                      });
                                    },
                                  ),
                                  PopupMenuItem(
                                    child: Text("JPY"),
                                    onTap: () {
                                      setState(() {
                                        crpto = 130;
                                      });
                                    },
                                  ),
                                  PopupMenuItem(
                                    child: Text("MXN"),
                                    onTap: () {
                                      setState(() {
                                        crpto = 20.36;
                                      });
                                    },
                                  ),
                                  PopupMenuItem(
                                    child: Text("NOK"),
                                    onTap: () {
                                      setState(() {
                                        crpto = 9.34;
                                      });
                                    },
                                  ),
                                ];
                              }),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }
            return Center(
              child: Container(
                child: CircularProgressIndicator(),
              ),
            );
          },
        ),
      ),
    );
  }

  Future<modal> ApiCall() async {
    Uri uri = Uri.parse(
        "http://api.coinlayer.com/api/live?access_key=21b95c963c76a1547f7f062d1b763f5d");
    var res = await http.get(uri);
    var Jsd = convert.jsonDecode(res.body);
    print("$Jsd");
    return modal.fromJson(Jsd);
  }
}
