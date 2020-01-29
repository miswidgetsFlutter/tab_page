import 'package:flutter/material.dart';
import 'package:tab_page/TabPage.dart';

void main() {
  runApp(TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.date_range), text: 'Datos',),
                Tab(icon: Icon(Icons.description), text: 'Descripcion',),
              ],
            ),
            title: Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
              TabPage(),
              Scaffold(
                body: Text('pagina 2'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
