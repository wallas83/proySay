import 'package:conve_say/src/widgets/tab1_widget.dart';
import 'package:conve_say/src/widgets/tab2_widget.dart';
import 'package:conve_say/src/widgets/tab3_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
          length: 3,
          child: Scaffold(
          appBar: AppBar(
          centerTitle: true,
          title: Text('SayriLaser', style: TextStyle(color: Colors.redAccent),),
          bottom: TabBar(
            indicatorColor: Colors.redAccent,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.blueGrey[200],
            tabs: [
                Tab(child: Text('Trupan') ),
                Tab(child: Text('Acrilico')),
                Tab(child: Text('Acrilico libre')),
          ]),
        ),
        body: TabBarView(
          children: [
            Tab1(),
            Tab2(),
            Tab3()
          ]) ,
      ),
    );
  }
}

