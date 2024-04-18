import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:project/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// void main() {
//   runApp(WeatherApp());
// }

// class WeatherApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );
//   }
// }

void main() {
  runApp(Test());
}

class Test extends StatefulWidget {
  @override
  _task createState() => _task();
}

class _task extends State<Test> {
  final imagePick = ImagePicker();
  File? image;
  upload() async {
    var picked = await imagePick.pickImage(source: ImageSource.gallery);
    if (picked != null) {
      setState(() {
        image = File(picked.path);
      });
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(),
          body: Column(children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    'assets/images/R (1).png',
                    fit: BoxFit.cover,
                  ),
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    'Hla Maged',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Personal',
                    style: TextStyle(color: Colors.grey),
                  )
                ]),
              ],
            ),
            Spacer(),
            Stack(alignment: Alignment.centerRight, children: [
              Container(
                padding: EdgeInsets.only(left: 14),
                decoration: BoxDecoration(
                  color: Color(0xff0E278E),
                ),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Connections',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                height: 100,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  '21 New',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff5CC1AF),
                ),
              )
            ]),
            Stack(alignment: Alignment.centerRight, children: [
              Container(
                padding: EdgeInsets.only(left: 14),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Private Data',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xff5CC1AF),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  '10 New',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff0E278E),
                ),
              )
            ]),
            Spacer(),
            Text(
              'Your Photos',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Divider(
              indent: 14,
              endIndent: 14,
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: -10,
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/OIP (8).jpg',
                        fit: BoxFit.cover,
                      ),
                      margin: EdgeInsets.all(10),
                      height: 80,
                      width: 100,
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/OIP (6).jpg',
                        fit: BoxFit.cover,
                      ),
                      margin: EdgeInsets.all(10),
                      height: 80,
                      width: 100,
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/OIP (4).jpg',
                        fit: BoxFit.cover,
                      ),
                      margin: EdgeInsets.all(10),
                      height: 80,
                      width: 100,
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/OIP (2).jpg',
                        fit: BoxFit.cover,
                      ),
                      margin: EdgeInsets.all(10),
                      height: 80,
                      width: 100,
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/OIP (5).jpg',
                        fit: BoxFit.cover,
                      ),
                      margin: EdgeInsets.all(10),
                      height: 80,
                      width: 100,
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/desktop-backgrounds-nawpic-25.jpg',
                        fit: BoxFit.cover,
                      ),
                      margin: EdgeInsets.all(10),
                      height: 80,
                      width: 100,
                    ),
                  ]),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Add Connections',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(150, 40),
                      backgroundColor: Color(0xff0E278E),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Edit',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(60, 40),
                      backgroundColor: Color(0xff5CC1AF),
                    ),
                  ),
                )
              ],
            ),
            Spacer(),
          ]),
        ));
  }
}
