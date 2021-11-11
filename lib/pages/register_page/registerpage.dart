import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        child: SizedBox(width: 100),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'SINGUP',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 30,
                          color: Colors.blueGrey[600],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Image.asset('assets/images/top-regis.png'),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset('assets/images/singup 1.png'),
                    SizedBox(height: 30),
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
                              hintText: 'Usename',
                              labelText: 'Usename',
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
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                          ),
                          hintText: 'Password',
                          labelText: 'Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 250,
                      height: 50,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.account_box),
                          hintText: 'EnterPassword',
                          labelText: 'Enter Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 250,
                      height: 50,
                      child: TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.mail),
                          hintText: 'Email',
                          labelText: 'Email',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 250,
                      height: 50,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        color: Colors.indigo[300],
                        autofocus: true,
                        onPressed: () {},
                        child: Text(
                          'SUBMIT',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    FlatButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text.rich(
                        TextSpan(
                          text: 'Already have an Account ?  ',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.blueGrey[100],
                            fontSize: 10,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Sign In ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey[700],
                                  fontSize: 10,
                                )),
                          ],
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
