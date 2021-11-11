import 'package:flutapp/pages/others_pages/index.dart';
import 'package:flutapp/pages/register_page/registerpage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/Vector-header.png',
                      width: 80,
                    ),
                    Text.rich(TextSpan(
                        text: 'WELLCOME',
                        style: TextStyle(
                          fontSize: 25,
                        ))),
                    Container(
                      child: SizedBox(
                        width: 50,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Image.asset('assets/images/Center.png'),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 250,
                          height: 50,
                          child: TextField(
                            obscureText: false,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.account_box),
                              hintText: 'Email',
                              labelText: 'Email',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 250,
                          height: 50,
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              hintText: 'Password',
                              labelText: 'Password',
                              fillColor: Colors.indigo[300],
                              focusColor: Colors.indigo[300],
                              hoverColor: Colors.indigo[300],
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 250,
                      height: 50,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        color: Colors.indigo[300],
                        autofocus: true,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => IndexPage()));
                        },
                        child: Text(
                          'LOGIN',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            icon: Image.asset('assets/images/fb-regis.png'),
                            onPressed: () {}),
                        IconButton(
                            icon: Image.asset('assets/images/google-regis.png'),
                            onPressed: () {}),
                        IconButton(
                            icon: Image.asset('assets/images/tw-regis.png'),
                            onPressed: () {}),
                      ],
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterPage(),
                          ),
                        );
                      },
                      child: Text.rich(
                        TextSpan(
                          text: 'Dont have an Account ? ',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.blueGrey[100],
                            fontSize: 10,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Sign up',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey[700],
                                  fontSize: 10,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
