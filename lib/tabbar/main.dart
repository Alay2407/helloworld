import 'package:flutter/material.dart';
import 'package:hello_world/tabbar/screens/flight_screen.dart';
import 'package:hello_world/tabbar/screens/train_screen.dart';
import 'package:hello_world/tabbar/screens/tram_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tabbar widget',
      home: TabBarPage(),
    );
  }
}

class TabBarPage extends StatefulWidget {
  const TabBarPage({Key? key}) : super(key: key);

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> with TickerProviderStateMixin {
  late final TabController _tabController;

  var tabList = [
    Tab(
      icon: Icon(Icons.train),
      /* text: 'Train',*/
    ),
    Tab(
      icon: Icon(Icons.airplanemode_active),
      /*text: 'Flight',*/
    ),
    Tab(
      icon: Icon(Icons.tram),
      /*text: 'Tram',*/
    )
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.navigate_next),
          onPressed: () {
            //print(_tabController.index);
            // _tabController.index = 2;
            _tabController.animateTo(2,
                duration: Duration(
                  milliseconds: 200,
                ),
                curve: Curves.bounceIn);
          },
        ),
        appBar: AppBar(
          title: Text('Tabbar widget'),
          bottom: TabBar(
            controller: _tabController,
            tabs: tabList,
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const [
            TrainScreen(),
            FlightScreen(),
            TramScreen(),
          ],
        ));
  }
}
