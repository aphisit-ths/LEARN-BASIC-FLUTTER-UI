import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutapp/pages/login_page/loginpage.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Container(
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 500.0,
                    autoPlay: true,
                    aspectRatio: 1.25,
                  ),
                  items: ['intro1', 'intro2', 'intro3', 'intro4'].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.height,
                            height: MediaQuery.of(context).size.height,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            child: Image.asset('assets/images_intro/$i.png'));
                      },
                    );
                  }).toList(),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Text(
                      'SKIP',
                      style:
                          TextStyle(fontSize: 10, color: Colors.blueGrey[600]),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
