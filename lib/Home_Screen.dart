import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.teal,
          leading: Icon(
            Icons.menu,
          ),
          title: Text('First App'),
          actions: [
            IconButton(
                onPressed: () {
                  print("search");
                },
                icon: Icon(Icons.search)),
            IconButton(
                onPressed: () {
                  print('clicked');
                },
                icon: Icon(Icons.notification_important))
          ],
        ),
        body: Stack(
          children: [
            Image(
                image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2015/04/19/08/33/flower-729512__340.jpg')),
            Container(
              child: Text(
                'Flowers',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ));
  }
}
