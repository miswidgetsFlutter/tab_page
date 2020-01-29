import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class TabPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TabPageState();
  
}

class TabPageState extends State<TabPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          DataTable(
            columns: [
              DataColumn(label: Text('nombre')),
              DataColumn(label: Text('edad')),              
            ], rows: [
              DataRow(cells: [
                DataCell(Text('marco cobian')),
                DataCell(Text('23')),
              ]),
              DataRow(cells: [
                DataCell(Text('Fernanda Garcia')),
                DataCell(Text('20')),
              ]),
            ],
          )
        ],
      ),
    );
  }
  
}