// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
                IconButton(icon: Icon(Icons.extension), onPressed: () {}),
              ],
            ),
            SizedBox(height: 37),
            Text.rich(
              TextSpan(
                text: 'Welcome ,    ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 60,
                ),
                children: [
                  TextSpan(
                    text: 'Aphsit',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
              style: TextStyle(fontSize: 70),
            ),
            SizedBox(height: 30),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search',
                labelText: 'Search',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Saved Places',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              child: SizedBox(
                height: 300,
                child: GridView.count(
                  mainAxisSpacing: 2.0,
                  crossAxisCount: 2,
                  childAspectRatio: 1.500,
                  children: [
                    for (var country in counties)
                      Image.asset('assets/images/$country.png')
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Text.rich(
              TextSpan(
                text:
                    'GOOD MORNING !                                                ',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                ),
                children: [],
              ),
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

final counties = [
  'japan',
  'barcelona',
  'greece',
  'rome',
];
