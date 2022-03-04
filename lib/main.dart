/*  MUHAMMAD ZAKI
    MI 2F
    2031710106 */

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _inputUser = 0;
  double _kelvin = 0;
  double _reamor = 0;

  TextEditingController etInput = new TextEditingController();

  Convert() {
    setState(() {
      _inputUser = double.parse(etInput.text);
      _reamor = 4 / 5 * _inputUser;
      _kelvin = _inputUser + 273;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Suhu By Muhammad Zaki 2031710106"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Masukan Suhu Dalam Celcius'),
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                controller: etInput,
                keyboardType: TextInputType.number,
              ),
              Container(
                height: 450,
                width: 500,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Text("Suhu dalam Kelvin"),
                          ),
                          Container(
                            child: Text(
                              "$_kelvin",
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Text("Suhu dalam Reamor"),
                          ),
                          Container(
                            child: Text(
                              "$_reamor",
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: RaisedButton(
                  onPressed: Convert,
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  child: Text("Konversi Suhu"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
