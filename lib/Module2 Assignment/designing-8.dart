import 'package:flutter/material.dart';

void main() {
  runApp(ImageViewApp());
}

class ImageViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image View Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ImageViewScreen(),
    );
  }
}

class ImageViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image View Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://images.pexels.com/photos/16839818/pexels-photo-16839818/free-photo-of-city-italian-water-street.jpeg'))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://images.pexels.com/photos/16839818/pexels-photo-16839818/free-photo-of-city-italian-water-street.jpeg'))),
                ),
                SizedBox(width: 16.0),
                Text(
                  'Hello, World!',
                  style: TextStyle(fontSize: 24.0),
                ),
                SizedBox(width: 16.0),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://images.pexels.com/photos/16839818/pexels-photo-16839818/free-photo-of-city-italian-water-street.jpeg'))),
                ),
              ],
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://images.pexels.com/photos/16839818/pexels-photo-16839818/free-photo-of-city-italian-water-street.jpeg'))),
            ),
          ],
        ),
      ),
    );
  }
}
