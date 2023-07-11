import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var Color = [
    Colors.black,
    Colors.orange,
    Colors.indigo,
    Colors.teal,
    Colors.pink,
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Column(
          children: [
            //Grid view with count
            // Container(
            //   height: 400,
            //   child: GridView.count(
            //     crossAxisCount: 2,
            //     crossAxisSpacing: 20,
            //     mainAxisSpacing: 20,
            //     children: [
            //       Container(
            //         color: Color[0],
            //       ),
            //       Container(
            //         color: Color[1],
            //       ),
            //       Container(
            //         color: Color[2],
            //       ),
            //       Container(
            //         color: Color[3],
            //       ),
            //       Container(
            //         color: Color[4],
            //       ),
            //     ],
            //   ),
            // ),

            //Grid view with extent
            // Container(
            //   height: 500,
            //   child: GridView.extent(maxCrossAxisExtent: 200, children: [
            //     Container(
            //       color: Color[0],
            //     ),
            //     Container(
            //       color: Color[1],
            //     ),
            //     Container(
            //       color: Color[2],
            //     ),
            //     Container(
            //       color: Color[3],
            //     ),
            //     Container(
            //       color: Color[4],
            //     ),
            //   ],
            //   ),
            // ),

            //Grid View with builder
            GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                 mainAxisSpacing: 11,crossAxisSpacing: 11, maxCrossAxisExtent: 200),
              itemBuilder: (context, index) {

                return Container(color: Color[index],);
              },
              itemCount: Color.length,
            )
          ],
        ),
      ),
    );
  }
}
