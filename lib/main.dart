import 'package:flutter/material.dart';
import 'package:konversi_suhu_listmap/widgets/button.dart';
import 'package:konversi_suhu_listmap/widgets/input.dart';
import 'package:konversi_suhu_listmap/widgets/result.dart';

import 'widgets/riwayat.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController Celcius = new TextEditingController();
  String _newValue = "Kelvin";
  double _result = 0;
  double _inputUser = 0;
  double _kelvin = 0;
  double _reamor = 0;

  final inputController = TextEditingController();

  List<String> listViewItem = <String>[];

  var listItem = ["Kelvin", "Reamur"];

  void konversi() {
    setState(() {
      _inputUser = double.parse(Celcius.text);

      switch (_newValue) {
        case "Kelvin":
          _result = _inputUser + 273;
          listViewItem.add("$_newValue : $_result");
          break;
        case "Reamur":
          _result = (4 / 5) * _inputUser;
          listViewItem.add("$_newValue : $_result");
          break;
      }
    });
  }

  dropdownOnChanged(String? changeValue) {
    setState(() {
      _newValue = changeValue!;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Suhu ListMap"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              input(Celcius: Celcius),
              DropdownButton<String>(
                items: listItem.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                value: _newValue,
                onChanged: dropdownOnChanged,
              ),
              result(
                result_: _result,
              ),
              button(
                konversi: konversi,
              ),
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 10),
                child: Text(
                  "Riwayat Konversi",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              riwayat(listViewItem: listViewItem),
            ],
          ),
        ),
      ),
    );
  }
}
